package com.argusoft.sewa.android.app.support;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.argusoft.sewa.android.app.model.SupportActionBean;
import com.argusoft.sewa.android.app.model.SupportAttachmentBean;
import com.argusoft.sewa.android.app.model.SupportCommentBean;
import com.argusoft.sewa.android.app.model.SupportTicketBean;
import com.argusoft.sewa.android.app.support.SupportApi;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import java.io.File;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public class SupportStore {
    private static final int DETAIL_LIMIT = 15;
    private static final String DONE = "CLOSED,REJECTED,CANCELLED";
    private static final long PREFETCH_LIMIT = 3145728;
    private static final String TAG = "SupportStore";
    Dao<SupportActionBean, Integer> actions;
    SupportApi api;
    Dao<SupportAttachmentBean, Integer> attachments;
    Dao<SupportCommentBean, Integer> comments;
    Dao<SupportTicketBean, Integer> tickets;

    /* JADX INFO: Access modifiers changed from: private */
    interface IdSetter {
        void set(Integer num);
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface Send {
        void run() throws SupportApi.Failure;
    }

    /* JADX INFO: Access modifiers changed from: private */
    interface SqlWork {
        void run() throws SQLException;
    }

    public static class Summary {
        public String lastAt;
        public Boolean lastFromSupport;
        public int photos;
        public int replies;
        public boolean voice;
        public int waiting;
    }

    public static class SyncResult {
        public boolean networkProblem;
        public boolean offline;
        public int refused;
        public int sent;
        public boolean sessionEnded;
    }

    public List<SupportTicketBean> tickets(Long l) {
        ArrayList arrayList = new ArrayList();
        if (l == null) {
            return arrayList;
        }
        try {
            arrayList.addAll(this.tickets.queryForEq("ownerUserId", l));
        } catch (SQLException e) {
            Log.e(TAG, "Could not read requests", e);
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda11
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return SupportStore.lambda$tickets$0((SupportTicketBean) obj, (SupportTicketBean) obj2);
            }
        });
        return arrayList;
    }

    static /* synthetic */ int lambda$tickets$0(SupportTicketBean supportTicketBean, SupportTicketBean supportTicketBean2) {
        boolean zEquals = SupportTicketBean.SYNCED.equals(supportTicketBean.syncState);
        if ((!zEquals) != (!SupportTicketBean.SYNCED.equals(supportTicketBean2.syncState))) {
            return !zEquals ? -1 : 1;
        }
        return Long.compare(SupportStatus.millis(supportTicketBean2.createdAt), SupportStatus.millis(supportTicketBean.createdAt));
    }

    public SupportTicketBean ticket(int i) {
        try {
            return this.tickets.queryForId(Integer.valueOf(i));
        } catch (SQLException unused) {
            return null;
        }
    }

    public List<SupportCommentBean> comments(int i) {
        ArrayList arrayList = new ArrayList();
        try {
            arrayList.addAll(this.comments.queryForEq("ticketLocalId", Integer.valueOf(i)));
        } catch (SQLException e) {
            Log.e(TAG, "Could not read messages", e);
        }
        Collections.sort(arrayList, new Comparator() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda7
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(SupportStatus.millis(((SupportCommentBean) obj).createdAt), SupportStatus.millis(((SupportCommentBean) obj2).createdAt));
            }
        });
        return arrayList;
    }

    public List<SupportAttachmentBean> attachments(int i) {
        try {
            return this.attachments.queryForEq("ticketLocalId", Integer.valueOf(i));
        } catch (SQLException unused) {
            return new ArrayList();
        }
    }

    public SupportActionBean pendingAction(int i) {
        try {
            List<SupportActionBean> listQueryForEq = this.actions.queryForEq("ticketLocalId", Integer.valueOf(i));
            if (listQueryForEq.isEmpty()) {
                return null;
            }
            return listQueryForEq.get(0);
        } catch (SQLException unused) {
            return null;
        }
    }

    public Summary summary(SupportTicketBean supportTicketBean) {
        Summary summary = new Summary();
        int i = 0;
        summary.voice = supportTicketBean.voicePath != null;
        int size = photoPaths(supportTicketBean).size();
        long jMillis = SupportStatus.millis(supportTicketBean.createdAt);
        for (SupportAttachmentBean supportAttachmentBean : attachments(supportTicketBean.getId().intValue())) {
            if (supportAttachmentBean.isImage()) {
                i++;
            } else if (supportAttachmentBean.isVoice() && Math.abs(SupportStatus.millis(supportAttachmentBean.createdAt) - jMillis) < 120000) {
                summary.voice = true;
            }
        }
        if (size <= 0) {
            size = i;
        }
        summary.photos = size;
        List<SupportCommentBean> listComments = comments(supportTicketBean.getId().intValue());
        summary.replies = listComments.size();
        if (!listComments.isEmpty()) {
            SupportCommentBean supportCommentBean = listComments.get(listComments.size() - 1);
            summary.lastFromSupport = Boolean.valueOf(!supportCommentBean.mine);
            summary.lastAt = supportCommentBean.createdAt;
        }
        Iterator<SupportCommentBean> it = listComments.iterator();
        while (it.hasNext()) {
            if (!SupportTicketBean.SYNCED.equals(it.next().syncState)) {
                summary.waiting++;
            }
        }
        return summary;
    }

    public int waitingCount(Long l) {
        if (l == null) {
            return 0;
        }
        try {
            return ((int) this.tickets.queryBuilder().where().eq("ownerUserId", l).and().eq("syncState", "PENDING").countOf()) + ((int) this.comments.queryBuilder().where().eq("ownerUserId", l).and().eq("syncState", "PENDING").countOf()) + ((int) this.actions.queryBuilder().where().eq("ownerUserId", l).countOf());
        } catch (SQLException unused) {
            return 0;
        }
    }

    public static List<String> photoPaths(SupportTicketBean supportTicketBean) {
        if (supportTicketBean.photoPaths == null) {
            return new ArrayList();
        }
        try {
            List<String> list = (List) new Gson().fromJson(supportTicketBean.photoPaths, new TypeToken<List<String>>() { // from class: com.argusoft.sewa.android.app.support.SupportStore.1
            }.getType());
            return list == null ? new ArrayList() : list;
        } catch (Exception unused) {
            return new ArrayList();
        }
    }

    public SupportTicketBean saveNewTicket(Long l, String str, String str2, File file, List<File> list) throws SQLException {
        SupportTicketBean supportTicketBean = new SupportTicketBean();
        supportTicketBean.ownerUserId = l;
        supportTicketBean.topic = str;
        supportTicketBean.description = str2;
        supportTicketBean.title = str2;
        supportTicketBean.status = "NEW";
        supportTicketBean.createdAt = now();
        supportTicketBean.statusChangedAt = supportTicketBean.createdAt;
        supportTicketBean.voicePath = file == null ? null : file.getAbsolutePath();
        if (list != null && !list.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            Iterator<File> it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next().getAbsolutePath());
            }
            supportTicketBean.photoPaths = new Gson().toJson(arrayList);
        }
        supportTicketBean.idempotencyKey = UUID.randomUUID().toString();
        supportTicketBean.syncState = "PENDING";
        insert(this.tickets, supportTicketBean, new SupportStore$$ExternalSyntheticLambda6(supportTicketBean));
        return supportTicketBean;
    }

    public SupportCommentBean saveReply(Long l, int i, String str, File file) throws SQLException {
        SupportCommentBean supportCommentBean = new SupportCommentBean();
        supportCommentBean.ownerUserId = l;
        supportCommentBean.ticketLocalId = Integer.valueOf(i);
        supportCommentBean.mine = true;
        supportCommentBean.authorType = "REQUESTER";
        supportCommentBean.body = str;
        supportCommentBean.voicePath = file == null ? null : file.getAbsolutePath();
        supportCommentBean.createdAt = now();
        supportCommentBean.syncState = "PENDING";
        insert(this.comments, supportCommentBean, new SupportStore$$ExternalSyntheticLambda0(supportCommentBean));
        return supportCommentBean;
    }

    public SupportActionBean saveAnswer(Long l, int i, boolean z, String str) throws SQLException {
        final SupportActionBean supportActionBean = new SupportActionBean();
        supportActionBean.ownerUserId = l;
        supportActionBean.ticketLocalId = Integer.valueOf(i);
        supportActionBean.action = z ? SupportActionBean.FIXED : SupportActionBean.NOT_FIXED;
        supportActionBean.reason = str;
        supportActionBean.createdAt = System.currentTimeMillis();
        insert(this.actions, supportActionBean, new IdSetter() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda9
            @Override // com.argusoft.sewa.android.app.support.SupportStore.IdSetter
            public final void set(Integer num) {
                supportActionBean.setId(num);
            }
        });
        SupportTicketBean supportTicketBeanTicket = ticket(i);
        if (supportTicketBeanTicket != null) {
            supportTicketBeanTicket.status = z ? "CLOSED" : "REOPENED";
            supportTicketBeanTicket.allowedActions = null;
            supportTicketBeanTicket.statusChangedAt = now();
            this.tickets.update((Dao<SupportTicketBean, Integer>) supportTicketBeanTicket);
        }
        return supportActionBean;
    }

    /* renamed from: pushTicket, reason: merged with bridge method [inline-methods] */
    public synchronized String m600lambda$sync$4$comargusoftsewaandroidappsupportSupportStore(Context context, SupportTicketBean supportTicketBean) throws SupportApi.Failure {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = photoPaths(supportTicketBean).iterator();
        while (it.hasNext()) {
            arrayList.add(new File(it.next()));
        }
        try {
            apply(supportTicketBean, this.api.raise(context, supportTicketBean.idempotencyKey, supportTicketBean.topic, supportTicketBean.description, supportTicketBean.voicePath == null ? null : new File(supportTicketBean.voicePath), arrayList));
            supportTicketBean.syncState = SupportTicketBean.SYNCED;
            supportTicketBean.syncError = null;
            this.tickets.update((Dao<SupportTicketBean, Integer>) supportTicketBean);
        } catch (SupportApi.Failure e) {
            if (e.kind == SupportApi.Failure.Kind.REFUSED) {
                markTicketFailed(supportTicketBean, e.getMessage());
            }
            throw e;
        } catch (SQLException e2) {
            Log.e(TAG, "Sent, but could not save the reply", e2);
            return supportTicketBean.ticketNumber;
        }
        return supportTicketBean.ticketNumber;
    }

    /* renamed from: pushComment, reason: merged with bridge method [inline-methods] */
    public synchronized void m601lambda$sync$5$comargusoftsewaandroidappsupportSupportStore(final SupportCommentBean supportCommentBean) throws SupportApi.Failure {
        SupportTicketBean supportTicketBeanTicket = ticket(supportCommentBean.ticketLocalId.intValue());
        if (supportTicketBeanTicket == null || !supportTicketBeanTicket.isOnServer()) {
            return;
        }
        try {
            if (supportCommentBean.voicePath != null) {
                File file = new File(supportCommentBean.voicePath);
                if (file.exists()) {
                    this.api.voiceReply(supportTicketBeanTicket.serverId.longValue(), file);
                } else {
                    this.comments.delete((Dao<SupportCommentBean, Integer>) supportCommentBean);
                    return;
                }
            } else {
                this.api.reply(supportTicketBeanTicket.serverId.longValue(), supportCommentBean.body);
            }
            supportCommentBean.syncState = SupportTicketBean.SYNCED;
            supportCommentBean.syncError = null;
            this.comments.update((Dao<SupportCommentBean, Integer>) supportCommentBean);
        } catch (SupportApi.Failure e) {
            if (e.kind == SupportApi.Failure.Kind.REFUSED) {
                supportCommentBean.syncState = SupportTicketBean.FAILED;
                supportCommentBean.syncError = e.getMessage();
                quietly(new SqlWork() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda8
                    @Override // com.argusoft.sewa.android.app.support.SupportStore.SqlWork
                    public final void run() throws SQLException {
                        this.f$0.m598x420c3561(supportCommentBean);
                    }
                });
            }
            throw e;
        } catch (SQLException e2) {
            Log.e(TAG, "Could not save the reply's state", e2);
        }
    }

    /* renamed from: lambda$pushComment$2$com-argusoft-sewa-android-app-support-SupportStore, reason: not valid java name */
    /* synthetic */ void m598x420c3561(SupportCommentBean supportCommentBean) throws SQLException {
        this.comments.update((Dao<SupportCommentBean, Integer>) supportCommentBean);
    }

    /* renamed from: pushAnswer, reason: merged with bridge method [inline-methods] */
    public synchronized void m602lambda$sync$6$comargusoftsewaandroidappsupportSupportStore(final SupportActionBean supportActionBean) throws SupportApi.Failure {
        SupportTicketBean supportTicketBeanTicket = ticket(supportActionBean.ticketLocalId.intValue());
        if (supportTicketBeanTicket == null || !supportTicketBeanTicket.isOnServer()) {
            return;
        }
        try {
            try {
                SupportTicket supportTicketFixed = SupportActionBean.FIXED.equals(supportActionBean.action) ? this.api.fixed(supportTicketBeanTicket.serverId.longValue()) : this.api.notFixed(supportTicketBeanTicket.serverId.longValue(), supportActionBean.reason);
                this.actions.delete((Dao<SupportActionBean, Integer>) supportActionBean);
                if (supportTicketFixed != null) {
                    apply(supportTicketBeanTicket, supportTicketFixed);
                    this.tickets.update((Dao<SupportTicketBean, Integer>) supportTicketBeanTicket);
                }
            } catch (SupportApi.Failure e) {
                if (e.kind == SupportApi.Failure.Kind.REFUSED) {
                    quietly(new SqlWork() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda5
                        @Override // com.argusoft.sewa.android.app.support.SupportStore.SqlWork
                        public final void run() throws SQLException {
                            this.f$0.m597x208675f3(supportActionBean);
                        }
                    });
                }
                throw e;
            }
        } catch (SQLException e2) {
            Log.e(TAG, "Could not save the answer's state", e2);
        }
    }

    /* renamed from: lambda$pushAnswer$3$com-argusoft-sewa-android-app-support-SupportStore, reason: not valid java name */
    /* synthetic */ void m597x208675f3(SupportActionBean supportActionBean) throws SQLException {
        this.actions.delete((Dao<SupportActionBean, Integer>) supportActionBean);
    }

    public synchronized SyncResult sync(final Context context, Long l) {
        SyncResult syncResult = new SyncResult();
        if (l == null) {
            return syncResult;
        }
        if (!SupportApi.isOnline(context)) {
            syncResult.offline = true;
            return syncResult;
        }
        try {
            for (final SupportTicketBean supportTicketBean : this.tickets.queryBuilder().where().eq("ownerUserId", l).and().eq("syncState", "PENDING").query()) {
                if (!send(syncResult, new Send() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda13
                    @Override // com.argusoft.sewa.android.app.support.SupportStore.Send
                    public final void run() throws SupportApi.Failure {
                        this.f$0.m600lambda$sync$4$comargusoftsewaandroidappsupportSupportStore(context, supportTicketBean);
                    }
                })) {
                    return syncResult;
                }
            }
            for (final SupportCommentBean supportCommentBean : this.comments.queryBuilder().where().eq("ownerUserId", l).and().eq("syncState", "PENDING").query()) {
                SupportTicketBean supportTicketBeanTicket = ticket(supportCommentBean.ticketLocalId.intValue());
                if (supportTicketBeanTicket != null && supportTicketBeanTicket.isOnServer() && !send(syncResult, new Send() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda14
                    @Override // com.argusoft.sewa.android.app.support.SupportStore.Send
                    public final void run() throws SupportApi.Failure {
                        this.f$0.m601lambda$sync$5$comargusoftsewaandroidappsupportSupportStore(supportCommentBean);
                    }
                })) {
                    return syncResult;
                }
            }
            for (final SupportActionBean supportActionBean : this.actions.queryForEq("ownerUserId", l)) {
                SupportTicketBean supportTicketBeanTicket2 = ticket(supportActionBean.ticketLocalId.intValue());
                if (supportTicketBeanTicket2 != null && supportTicketBeanTicket2.isOnServer() && !send(syncResult, new Send() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda1
                    @Override // com.argusoft.sewa.android.app.support.SupportStore.Send
                    public final void run() throws SupportApi.Failure {
                        this.f$0.m602lambda$sync$6$comargusoftsewaandroidappsupportSupportStore(supportActionBean);
                    }
                })) {
                    return syncResult;
                }
            }
            pull(context, l);
        } catch (SupportApi.Failure e) {
            record(syncResult, e);
        } catch (SQLException e2) {
            Log.e(TAG, "Sync could not read the phone's requests", e2);
        }
        return syncResult;
    }

    public synchronized void pull(Context context, Long l) throws SupportApi.Failure {
        SupportTicketBean supportTicketBeanByServerId;
        boolean z;
        boolean z2;
        if (l != null) {
            if (SupportApi.isOnline(context)) {
                List<SupportTicket> listMine = this.api.mine();
                if (listMine == null) {
                    return;
                }
                int i = 0;
                for (SupportTicket supportTicket : listMine) {
                    try {
                        supportTicketBeanByServerId = byServerId(l, supportTicket.id);
                        if (supportTicketBeanByServerId == null) {
                            supportTicketBeanByServerId = new SupportTicketBean();
                            supportTicketBeanByServerId.ownerUserId = l;
                            supportTicketBeanByServerId.syncState = SupportTicketBean.SYNCED;
                            apply(supportTicketBeanByServerId, supportTicket);
                            insert(this.tickets, supportTicketBeanByServerId, new SupportStore$$ExternalSyntheticLambda6(supportTicketBeanByServerId));
                        } else if (pendingAction(supportTicketBeanByServerId.getId().intValue()) == null) {
                            apply(supportTicketBeanByServerId, supportTicket);
                            this.tickets.update((Dao<SupportTicketBean, Integer>) supportTicketBeanByServerId);
                        }
                        z = true;
                        z2 = supportTicketBeanByServerId.detailsFetchedFor == null || !supportTicketBeanByServerId.detailsFetchedFor.equals(supportTicket.statusChangedAt);
                        if (supportTicket.status != null && DONE.contains(supportTicket.status)) {
                            z = false;
                        }
                    } catch (SQLException e) {
                        Log.e(TAG, "Could not save request " + supportTicket.ticketNumber, e);
                    }
                    if (z2 || z) {
                        if (i < 15) {
                            refreshDetails(context, supportTicketBeanByServerId);
                            i++;
                        }
                    }
                }
            }
        }
    }

    public synchronized void refreshOne(Context context, int i) throws SupportApi.Failure {
        final SupportTicketBean supportTicketBeanTicket = ticket(i);
        if (supportTicketBeanTicket != null && supportTicketBeanTicket.isOnServer() && SupportApi.isOnline(context)) {
            SupportTicket supportTicketTicket = this.api.ticket(supportTicketBeanTicket.serverId.longValue());
            if (supportTicketTicket != null && pendingAction(i) == null) {
                apply(supportTicketBeanTicket, supportTicketTicket);
                quietly(new SqlWork() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda10
                    @Override // com.argusoft.sewa.android.app.support.SupportStore.SqlWork
                    public final void run() throws SQLException {
                        this.f$0.m599xac38333c(supportTicketBeanTicket);
                    }
                });
            }
            refreshDetails(context, supportTicketBeanTicket);
        }
    }

    /* renamed from: lambda$refreshOne$7$com-argusoft-sewa-android-app-support-SupportStore, reason: not valid java name */
    /* synthetic */ void m599xac38333c(SupportTicketBean supportTicketBean) throws SQLException {
        this.tickets.update((Dao<SupportTicketBean, Integer>) supportTicketBean);
    }

    private void refreshDetails(Context context, SupportTicketBean supportTicketBean) throws SupportApi.Failure {
        List<SupportAttachment> arrayList;
        List<SupportComment> listComments = this.api.comments(supportTicketBean.serverId.longValue());
        try {
            arrayList = this.api.attachments(supportTicketBean.serverId.longValue());
        } catch (SupportApi.Failure e) {
            if (e.kind != SupportApi.Failure.Kind.REFUSED) {
                throw e;
            }
            arrayList = new ArrayList<>();
        }
        try {
            for (SupportCommentBean supportCommentBean : this.comments.queryForEq("ticketLocalId", supportTicketBean.getId())) {
                if (SupportTicketBean.SYNCED.equals(supportCommentBean.syncState)) {
                    if (supportCommentBean.voicePath != null) {
                        new File(supportCommentBean.voicePath).delete();
                    }
                    this.comments.delete((Dao<SupportCommentBean, Integer>) supportCommentBean);
                }
            }
            if (listComments != null) {
                for (SupportComment supportComment : listComments) {
                    SupportCommentBean supportCommentBean2 = new SupportCommentBean();
                    supportCommentBean2.serverId = supportComment.id;
                    supportCommentBean2.ticketLocalId = supportTicketBean.getId();
                    supportCommentBean2.ownerUserId = supportTicketBean.ownerUserId;
                    supportCommentBean2.authorType = supportComment.authorType;
                    supportCommentBean2.mine = supportComment.mine;
                    supportCommentBean2.body = supportComment.body;
                    supportCommentBean2.createdAt = supportComment.createdAt;
                    supportCommentBean2.syncState = SupportTicketBean.SYNCED;
                    insert(this.comments, supportCommentBean2, new SupportStore$$ExternalSyntheticLambda0(supportCommentBean2));
                }
            }
            HashMap map = new HashMap();
            for (SupportAttachmentBean supportAttachmentBean : this.attachments.queryForEq("ticketLocalId", supportTicketBean.getId())) {
                map.put(supportAttachmentBean.serverId, supportAttachmentBean);
            }
            for (SupportAttachment supportAttachment : arrayList) {
                final SupportAttachmentBean supportAttachmentBean2 = (SupportAttachmentBean) map.remove(supportAttachment.id);
                if (supportAttachmentBean2 == null) {
                    supportAttachmentBean2 = new SupportAttachmentBean();
                    supportAttachmentBean2.serverId = supportAttachment.id;
                    supportAttachmentBean2.ticketLocalId = supportTicketBean.getId();
                    supportAttachmentBean2.ownerUserId = supportTicketBean.ownerUserId;
                }
                supportAttachmentBean2.attachmentType = supportAttachment.attachmentType;
                supportAttachmentBean2.fileName = supportAttachment.fileName;
                supportAttachmentBean2.sizeBytes = supportAttachment.sizeBytes;
                supportAttachmentBean2.durationSeconds = supportAttachment.durationSeconds;
                supportAttachmentBean2.createdAt = supportAttachment.createdAt;
                if (supportAttachmentBean2.getId() == null) {
                    Dao<SupportAttachmentBean, Integer> dao = this.attachments;
                    Objects.requireNonNull(supportAttachmentBean2);
                    insert(dao, supportAttachmentBean2, new IdSetter() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda4
                        @Override // com.argusoft.sewa.android.app.support.SupportStore.IdSetter
                        public final void set(Integer num) {
                            supportAttachmentBean2.setId(num);
                        }
                    });
                } else {
                    this.attachments.update((Dao<SupportAttachmentBean, Integer>) supportAttachmentBean2);
                }
                if (supportAttachmentBean2.sizeBytes <= PREFETCH_LIMIT && !hasCopy(supportAttachmentBean2)) {
                    try {
                        download(context, supportTicketBean, supportAttachmentBean2);
                    } catch (SupportApi.Failure unused) {
                    }
                }
            }
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                this.attachments.delete((Dao<SupportAttachmentBean, Integer>) it.next());
            }
            supportTicketBean.detailsFetchedFor = supportTicketBean.statusChangedAt;
            this.tickets.update((Dao<SupportTicketBean, Integer>) supportTicketBean);
        } catch (SQLException e2) {
            Log.e(TAG, "Could not save messages for " + supportTicketBean.ticketNumber, e2);
        }
    }

    public static boolean hasCopy(SupportAttachmentBean supportAttachmentBean) {
        return supportAttachmentBean.localPath != null && new File(supportAttachmentBean.localPath).exists();
    }

    public File download(Context context, SupportTicketBean supportTicketBean, final SupportAttachmentBean supportAttachmentBean) throws SupportApi.Failure {
        if (hasCopy(supportAttachmentBean)) {
            return new File(supportAttachmentBean.localPath);
        }
        SupportAttachment supportAttachment = new SupportAttachment();
        supportAttachment.id = supportAttachmentBean.serverId;
        supportAttachment.attachmentType = supportAttachmentBean.attachmentType;
        supportAttachment.fileName = supportAttachmentBean.fileName;
        File fileDownload = this.api.download(context, supportTicketBean.serverId.longValue(), supportAttachment);
        supportAttachmentBean.localPath = fileDownload.getAbsolutePath();
        quietly(new SqlWork() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda2
            @Override // com.argusoft.sewa.android.app.support.SupportStore.SqlWork
            public final void run() throws SQLException {
                this.f$0.m595x3382477e(supportAttachmentBean);
            }
        });
        return fileDownload;
    }

    /* renamed from: lambda$download$8$com-argusoft-sewa-android-app-support-SupportStore, reason: not valid java name */
    /* synthetic */ void m595x3382477e(SupportAttachmentBean supportAttachmentBean) throws SQLException {
        this.attachments.update((Dao<SupportAttachmentBean, Integer>) supportAttachmentBean);
    }

    private static boolean send(SyncResult syncResult, Send send) {
        try {
            send.run();
            syncResult.sent++;
            return true;
        } catch (SupportApi.Failure e) {
            record(syncResult, e);
            return e.kind == SupportApi.Failure.Kind.REFUSED;
        }
    }

    private static void record(SyncResult syncResult, SupportApi.Failure failure) {
        if (failure.kind == SupportApi.Failure.Kind.SESSION) {
            syncResult.sessionEnded = true;
        } else if (failure.kind == SupportApi.Failure.Kind.REFUSED) {
            syncResult.refused++;
        } else {
            syncResult.networkProblem = true;
        }
    }

    private SupportTicketBean byServerId(Long l, Long l2) throws SQLException {
        List<SupportTicketBean> listQuery = this.tickets.queryBuilder().where().eq("ownerUserId", l).and().eq("serverId", l2).query();
        if (listQuery.isEmpty()) {
            return null;
        }
        return listQuery.get(0);
    }

    private static void apply(SupportTicketBean supportTicketBean, SupportTicket supportTicket) {
        if (supportTicket == null) {
            return;
        }
        supportTicketBean.serverId = supportTicket.id;
        supportTicketBean.ticketNumber = supportTicket.ticketNumber;
        supportTicketBean.title = supportTicket.title;
        supportTicketBean.description = supportTicket.description;
        supportTicketBean.status = supportTicket.status;
        supportTicketBean.topic = supportTicket.topic;
        supportTicketBean.createdAt = supportTicket.createdAt;
        supportTicketBean.statusChangedAt = supportTicket.statusChangedAt;
        supportTicketBean.resolutionSummary = supportTicket.resolutionSummary;
        supportTicketBean.allowedActions = supportTicket.allowedActions == null ? null : TextUtils.join(GlobalTypes.COMMA, supportTicket.allowedActions);
    }

    private void markTicketFailed(final SupportTicketBean supportTicketBean, String str) {
        supportTicketBean.syncState = SupportTicketBean.FAILED;
        supportTicketBean.syncError = str;
        quietly(new SqlWork() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda3
            @Override // com.argusoft.sewa.android.app.support.SupportStore.SqlWork
            public final void run() throws SQLException {
                this.f$0.m596xfa0f4a4f(supportTicketBean);
            }
        });
    }

    /* renamed from: lambda$markTicketFailed$9$com-argusoft-sewa-android-app-support-SupportStore, reason: not valid java name */
    /* synthetic */ void m596xfa0f4a4f(SupportTicketBean supportTicketBean) throws SQLException {
        this.tickets.update((Dao<SupportTicketBean, Integer>) supportTicketBean);
    }

    public void discard(final SupportTicketBean supportTicketBean) {
        if (supportTicketBean.voicePath != null) {
            new File(supportTicketBean.voicePath).delete();
        }
        Iterator<String> it = photoPaths(supportTicketBean).iterator();
        while (it.hasNext()) {
            new File(it.next()).delete();
        }
        quietly(new SqlWork() { // from class: com.argusoft.sewa.android.app.support.SupportStore$$ExternalSyntheticLambda12
            @Override // com.argusoft.sewa.android.app.support.SupportStore.SqlWork
            public final void run() throws SQLException {
                this.f$0.m594xd6fe7015(supportTicketBean);
            }
        });
    }

    /* renamed from: lambda$discard$10$com-argusoft-sewa-android-app-support-SupportStore, reason: not valid java name */
    /* synthetic */ void m594xd6fe7015(SupportTicketBean supportTicketBean) throws SQLException {
        this.tickets.delete((Dao<SupportTicketBean, Integer>) supportTicketBean);
    }

    private synchronized <T> void insert(Dao<T, Integer> dao, T t, IdSetter idSetter) throws SQLException {
        dao.create((Dao<T, Integer>) t);
        idSetter.set(Integer.valueOf((int) dao.queryRawValue("SELECT MAX(`_ID`) FROM `" + dao.getTableName() + "`", new String[0])));
    }

    private static void quietly(SqlWork sqlWork) {
        try {
            sqlWork.run();
        } catch (SQLException e) {
            Log.e(TAG, "Database write failed", e);
        }
    }

    static String now() {
        return new SimpleDateFormat(GlobalTypes.ISO_8601_DATE_TIME_FORMAT, Locale.ROOT).format(new Date());
    }
}

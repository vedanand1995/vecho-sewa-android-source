package com.argusoft.sewa.android.app.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.model.SupportTicketBean;
import com.argusoft.sewa.android.app.support.SupportApi;
import com.argusoft.sewa.android.app.support.SupportLabels;
import com.argusoft.sewa.android.app.support.SupportStatus;
import com.argusoft.sewa.android.app.support.SupportStore;
import com.argusoft.sewa.android.app.transformer.SewaTransformer;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.google.android.material.button.MaterialButton;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public class GetHelpActivity extends MenuActivity {
    private View empty;
    private LinearLayout list;
    private View loading;
    private SwipeRefreshLayout refresh;
    SupportStore store;
    private boolean syncing;

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_get_help);
        setSupportActionBar((Toolbar) findViewById(R.id.my_toolbar));
        setTitle(SupportLabels.get(SupportLabels.GET_HELP));
        this.list = (LinearLayout) findViewById(R.id.help_list);
        this.loading = findViewById(R.id.help_loading);
        this.empty = findViewById(R.id.help_empty);
        SwipeRefreshLayout swipeRefreshLayout = (SwipeRefreshLayout) findViewById(R.id.help_refresh);
        this.refresh = swipeRefreshLayout;
        swipeRefreshLayout.setColorSchemeResources(R.color.colorPrimary);
        this.refresh.setOnRefreshListener(new SwipeRefreshLayout.OnRefreshListener() { // from class: com.argusoft.sewa.android.app.activity.GetHelpActivity$$ExternalSyntheticLambda1
            @Override // androidx.swiperefreshlayout.widget.SwipeRefreshLayout.OnRefreshListener
            public final void onRefresh() {
                this.f$0.syncNow();
            }
        });
        MaterialButton materialButton = (MaterialButton) findViewById(R.id.help_retry);
        materialButton.setText(SupportLabels.get(SupportLabels.RETRY));
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GetHelpActivity$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m191x1e86070b(view);
            }
        });
        ((TextView) findViewById(R.id.help_heading)).setText(SupportLabels.get(SupportLabels.YOUR_REPORTS));
        MaterialButton materialButton2 = (MaterialButton) findViewById(R.id.help_raise);
        materialButton2.setText(SupportLabels.get(SupportLabels.RAISE));
        materialButton2.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GetHelpActivity$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m192x1fbc59ea(view);
            }
        });
    }

    /* renamed from: lambda$onCreate$0$com-argusoft-sewa-android-app-activity-GetHelpActivity, reason: not valid java name */
    /* synthetic */ void m191x1e86070b(View view) {
        syncNow();
    }

    /* renamed from: lambda$onCreate$1$com-argusoft-sewa-android-app-activity-GetHelpActivity, reason: not valid java name */
    /* synthetic */ void m192x1fbc59ea(View view) {
        startActivity(new Intent(this, (Class<?>) RaiseHelpActivity_.class));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        resumeActivity();
        showSaved();
        if (SupportApi.isOnline(this)) {
            fetch(owner());
        }
    }

    @Override // com.argusoft.sewa.android.app.activity.MenuActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 16908332) {
            finish();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    private Long owner() {
        if (SewaTransformer.loginBean == null) {
            return null;
        }
        return SewaTransformer.loginBean.getUserID();
    }

    private void showSaved() {
        this.loading.setVisibility(8);
        show(this.store.tickets(owner()), this.store.waitingCount(owner()));
    }

    void fetch(Long l) {
        try {
            this.store.pull(this, l);
        } catch (SupportApi.Failure unused) {
        }
        fetched();
    }

    void fetched() {
        if (isFinishing() || this.syncing) {
            return;
        }
        showSaved();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void syncNow() {
        if (this.syncing) {
            return;
        }
        if (!SupportApi.isOnline(this)) {
            this.refresh.setRefreshing(false);
            SewaUtil.generateToast(this, SupportLabels.get(SupportLabels.SYNC_OFFLINE));
        } else {
            this.syncing = true;
            this.refresh.setRefreshing(true);
            runSync(owner());
        }
    }

    void runSync(Long l) {
        synced(this.store.sync(this, l));
    }

    void synced(SupportStore.SyncResult syncResult) {
        String str;
        this.syncing = false;
        if (isFinishing()) {
            return;
        }
        this.refresh.setRefreshing(false);
        if (syncResult.offline) {
            str = SupportLabels.SYNC_OFFLINE;
        } else if (syncResult.sessionEnded) {
            str = SupportLabels.LOGIN_AGAIN;
        } else if (syncResult.networkProblem) {
            str = SupportLabels.SYNC_PROBLEM;
        } else {
            str = SupportLabels.SYNC_DONE;
        }
        SewaUtil.generateToast(this, SupportLabels.get(str));
        showSaved();
    }

    private void show(List<SupportTicketBean> list, int i) {
        this.list.removeAllViews();
        if (!SupportApi.isOnline(this)) {
            offlineNote();
        }
        if (i > 0) {
            syncCard(i);
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (SupportTicketBean supportTicketBean : list) {
            int iRank = rank(supportTicketBean);
            if (iRank <= 2) {
                arrayList.add(supportTicketBean);
            } else if (iRank == 3) {
                arrayList2.add(supportTicketBean);
            } else {
                arrayList3.add(supportTicketBean);
            }
        }
        group(SupportLabels.GROUP_NEEDS_YOU, arrayList);
        group(SupportLabels.GROUP_OPEN, arrayList2);
        group(SupportLabels.GROUP_CLOSED, arrayList3);
        boolean zIsEmpty = list.isEmpty();
        this.empty.setVisibility(zIsEmpty ? 0 : 8);
        findViewById(R.id.help_retry).setVisibility(8);
        if (zIsEmpty) {
            ((ImageView) findViewById(R.id.help_empty_icon)).setImageResource(R.drawable.ic_support_headset);
            ((TextView) findViewById(R.id.help_empty_text)).setText(SupportLabels.get(SupportLabels.NO_REQUESTS));
            ((TextView) findViewById(R.id.help_empty_hint)).setText(SupportLabels.get(SupportLabels.EMPTY_HINT));
        }
    }

    private void offlineNote() {
        float f = getResources().getDisplayMetrics().density;
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        float f2 = 12.0f * f;
        int i = (int) f2;
        int i2 = (int) (10.0f * f);
        linearLayout.setPadding(i, i2, i, i2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f2);
        gradientDrawable.setColor(ContextCompat.getColor(this, R.color.support_bubble_theirs));
        linearLayout.setBackground(gradientDrawable);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_support_cloud_off);
        imageView.setColorFilter(ContextCompat.getColor(this, R.color.support_muted));
        int i3 = (int) (22.0f * f);
        linearLayout.addView(imageView, new LinearLayout.LayoutParams(i3, i3));
        TextView textView = new TextView(this);
        textView.setText(SupportLabels.get(SupportLabels.OFFLINE_SHOWING));
        textView.setTextSize(15.0f);
        textView.setTextColor(ContextCompat.getColor(this, R.color.support_muted));
        textView.setPadding(i2, 0, 0, 0);
        linearLayout.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = (int) (f * 8.0f);
        this.list.addView(linearLayout, layoutParams);
    }

    private void syncCard(int i) {
        float f = getResources().getDisplayMetrics().density;
        int color = ContextCompat.getColor(this, R.color.support_tone_warning);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(0);
        linearLayout.setGravity(16);
        float f2 = 14.0f * f;
        int i2 = (int) (12.0f * f);
        linearLayout.setPadding((int) f2, i2, i2, i2);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(f2);
        int i3 = 16777215 & color;
        gradientDrawable.setColor(520093696 | i3);
        gradientDrawable.setStroke((int) (1.5f * f), i3 | 1711276032);
        linearLayout.setBackground(gradientDrawable);
        ImageView imageView = new ImageView(this);
        imageView.setImageResource(R.drawable.ic_support_sync_arrows);
        imageView.setColorFilter(color);
        int i4 = (int) (28.0f * f);
        linearLayout.addView(imageView, new LinearLayout.LayoutParams(i4, i4));
        TextView textView = new TextView(this);
        textView.setText(i + " " + SupportLabels.get(SupportLabels.WAITING_TO_SEND));
        textView.setTextSize(17.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setTextColor(color);
        textView.setPadding(i2, 0, (int) (8.0f * f), 0);
        linearLayout.addView(textView, new LinearLayout.LayoutParams(0, -2, 1.0f));
        MaterialButton materialButton = new MaterialButton(this);
        materialButton.setText(SupportLabels.get(SupportLabels.SYNC_NOW));
        materialButton.setAllCaps(false);
        materialButton.setTextSize(16.0f);
        materialButton.setIconResource(R.drawable.ic_support_sync_arrows);
        materialButton.setBackgroundTintList(ColorStateList.valueOf(color));
        materialButton.setCornerRadius((int) (24.0f * f));
        materialButton.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GetHelpActivity$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.m196x8d966239(view);
            }
        });
        linearLayout.addView(materialButton, new LinearLayout.LayoutParams(-2, (int) (52.0f * f)));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = (int) (f * 10.0f);
        this.list.addView(linearLayout, layoutParams);
    }

    /* renamed from: lambda$syncCard$2$com-argusoft-sewa-android-app-activity-GetHelpActivity, reason: not valid java name */
    /* synthetic */ void m196x8d966239(View view) {
        syncNow();
    }

    private static int rank(SupportTicketBean supportTicketBean) {
        if (!supportTicketBean.isOnServer()) {
            return 0;
        }
        int i = AnonymousClass1.$SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group[SupportStatus.of(supportTicketBean.status).group.ordinal()];
        int i2 = 1;
        if (i != 1) {
            i2 = 2;
            if (i != 2) {
                i2 = 3;
                if (i != 3) {
                    return 4;
                }
            }
        }
        return i2;
    }

    /* renamed from: com.argusoft.sewa.android.app.activity.GetHelpActivity$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group;

        static {
            int[] iArr = new int[SupportStatus.Group.values().length];
            $SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group = iArr;
            try {
                iArr[SupportStatus.Group.NEEDS_ANSWER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group[SupportStatus.Group.TO_CHECK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$argusoft$sewa$android$app$support$SupportStatus$Group[SupportStatus.Group.IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void open(SupportTicketBean supportTicketBean) {
        Intent intent = new Intent(this, (Class<?>) SupportTicketActivity_.class);
        intent.putExtra(SupportTicketActivity.EXTRA_LOCAL_ID, supportTicketBean.getId().intValue());
        startActivity(intent);
    }

    private void group(String str, List<SupportTicketBean> list) {
        if (list.isEmpty()) {
            return;
        }
        float f = getResources().getDisplayMetrics().density;
        TextView textView = new TextView(this);
        textView.setText(SupportLabels.get(str).toUpperCase(Locale.getDefault()) + "  ·  " + list.size());
        textView.setTextSize(13.0f);
        textView.setTypeface(textView.getTypeface(), 1);
        textView.setLetterSpacing(0.04f);
        textView.setTextColor(ContextCompat.getColor(this, R.color.support_muted));
        textView.setPadding((int) (4.0f * f), (int) (18.0f * f), 0, (int) (8.0f * f));
        this.list.addView(textView);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setOrientation(1);
        linearLayout.setBackgroundResource(R.drawable.support_card);
        linearLayout.setClipToOutline(true);
        for (int i = 0; i < list.size(); i++) {
            if (i > 0) {
                View view = new View(this);
                view.setBackgroundColor(ContextCompat.getColor(this, R.color.support_line));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, Math.max(1, (int) f));
                layoutParams.leftMargin = (int) (14.0f * f);
                linearLayout.addView(view, layoutParams);
            }
            linearLayout.addView(row(linearLayout, list.get(i)));
        }
        this.list.addView(linearLayout);
    }

    private View row(LinearLayout linearLayout, final SupportTicketBean supportTicketBean) {
        View viewTag;
        String string;
        int i;
        boolean zEquals = SupportTicketBean.FAILED.equals(supportTicketBean.syncState);
        SupportStatus supportStatusOf = supportTicketBean.isOnServer() ? SupportStatus.of(supportTicketBean.status) : SupportStatus.notSent();
        SupportStore.Summary summary = this.store.summary(supportTicketBean);
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.support_ticket_card, (ViewGroup) linearLayout, false);
        ((TextView) viewInflate.findViewById(R.id.card_title)).setText(SupportStatus.title(supportTicketBean.title));
        FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.card_tag);
        if (zEquals) {
            viewTag = new SupportStatus.Tag(SupportLabels.get(SupportLabels.COULD_NOT), R.color.support_tone_error).view(this);
        } else {
            viewTag = supportStatusOf.tag(this);
        }
        frameLayout.addView(viewTag);
        String str = "";
        if (supportTicketBean.ticketNumber != null) {
            str = supportTicketBean.ticketNumber.replace("TKT-", "") + "  ·  ";
        }
        ((TextView) viewInflate.findViewById(R.id.card_meta)).setText(str + SupportStatus.day(supportTicketBean.createdAt));
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (summary.voice) {
            fact(spannableStringBuilder, R.drawable.ic_support_mic, SupportLabels.get(SupportLabels.FACT_VOICE));
        }
        if (summary.photos > 0) {
            int i2 = R.drawable.ic_support_camera;
            StringBuilder sb = new StringBuilder();
            sb.append(summary.photos);
            sb.append(" ");
            sb.append(SupportLabels.get(summary.photos == 1 ? SupportLabels.FACT_PHOTO : SupportLabels.FACT_PHOTOS));
            fact(spannableStringBuilder, i2, sb.toString());
        }
        if (summary.replies > 0) {
            int i3 = R.drawable.ic_support_chat;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(summary.replies);
            sb2.append(" ");
            sb2.append(SupportLabels.get(summary.replies == 1 ? SupportLabels.FACT_REPLY : SupportLabels.FACT_REPLIES));
            fact(spannableStringBuilder, i3, sb2.toString());
        }
        TextView textView = (TextView) viewInflate.findViewById(R.id.card_facts);
        if (zEquals && supportTicketBean.syncError != null) {
            string = supportTicketBean.syncError;
            i = R.color.support_tone_error_ink;
        } else if (!supportTicketBean.isOnServer()) {
            string = SupportLabels.get(SupportLabels.SUB_NOT_SENT);
            i = R.color.support_tone_warning_ink;
        } else if (summary.waiting > 0) {
            string = summary.waiting + " " + SupportLabels.get(SupportLabels.REPLY_WAITING_SYNC);
            i = R.color.support_tone_warning_ink;
        } else {
            if (summary.lastFromSupport != null) {
                StringBuilder sb3 = new StringBuilder();
                sb3.append(SupportLabels.get(summary.lastFromSupport.booleanValue() ? SupportLabels.FACT_LAST_SUPPORT : SupportLabels.FACT_LAST_YOU));
                sb3.append(" ");
                sb3.append(SupportStatus.dayAndTime(summary.lastAt));
                string = sb3.toString();
            } else {
                string = null;
            }
            i = 0;
        }
        if (string != null) {
            if (spannableStringBuilder.length() > 0) {
                spannableStringBuilder.append("   ·   ");
            }
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append((CharSequence) string);
            if (i != 0) {
                spannableStringBuilder.setSpan(new ForegroundColorSpan(ContextCompat.getColor(this, i)), length, spannableStringBuilder.length(), 33);
            }
        }
        textView.setText(spannableStringBuilder);
        textView.setVisibility(spannableStringBuilder.length() == 0 ? 8 : 0);
        if (zEquals) {
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GetHelpActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m194xcc0816a2(supportTicketBean, view);
                }
            });
        } else {
            viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GetHelpActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.m195xcd3e6981(supportTicketBean, view);
                }
            });
        }
        return viewInflate;
    }

    /* renamed from: lambda$row$4$com-argusoft-sewa-android-app-activity-GetHelpActivity, reason: not valid java name */
    /* synthetic */ void m194xcc0816a2(final SupportTicketBean supportTicketBean, View view) {
        new AlertDialog.Builder(this).setMessage(supportTicketBean.syncError == null ? SupportLabels.get(SupportLabels.COULD_NOT) : supportTicketBean.syncError).setPositiveButton("OK", new DialogInterface.OnClickListener() { // from class: com.argusoft.sewa.android.app.activity.GetHelpActivity$$ExternalSyntheticLambda4
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.f$0.m193xcad1c3c3(supportTicketBean, dialogInterface, i);
            }
        }).show();
    }

    /* renamed from: lambda$row$3$com-argusoft-sewa-android-app-activity-GetHelpActivity, reason: not valid java name */
    /* synthetic */ void m193xcad1c3c3(SupportTicketBean supportTicketBean, DialogInterface dialogInterface, int i) {
        this.store.discard(supportTicketBean);
        showSaved();
    }

    /* renamed from: lambda$row$5$com-argusoft-sewa-android-app-activity-GetHelpActivity, reason: not valid java name */
    /* synthetic */ void m195xcd3e6981(SupportTicketBean supportTicketBean, View view) {
        open(supportTicketBean);
    }

    private void fact(SpannableStringBuilder spannableStringBuilder, int i, String str) {
        if (spannableStringBuilder.length() > 0) {
            spannableStringBuilder.append("   ·   ");
        }
        Drawable drawable = ContextCompat.getDrawable(this, i);
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            int i2 = (int) (getResources().getDisplayMetrics().density * 14.0f);
            drawableMutate.setBounds(0, 0, i2, i2);
            drawableMutate.setTint(ContextCompat.getColor(this, R.color.support_muted));
            int length = spannableStringBuilder.length();
            spannableStringBuilder.append(" ");
            spannableStringBuilder.setSpan(new ImageSpan(drawableMutate, 1), length, length + 1, 33);
            spannableStringBuilder.append(" ");
        }
        spannableStringBuilder.append((CharSequence) str);
    }
}

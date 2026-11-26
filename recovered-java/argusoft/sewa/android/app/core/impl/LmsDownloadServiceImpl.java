package com.argusoft.sewa.android.app.core.impl;

import android.app.DownloadManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.os.StatFs;
import android.util.Log;
import com.argusoft.sewa.android.app.BuildConfig;
import com.argusoft.sewa.android.app.constants.FieldNameConstants;
import com.argusoft.sewa.android.app.core.LmsDownloadService;
import com.argusoft.sewa.android.app.databean.LmsCourseDataBean;
import com.argusoft.sewa.android.app.databean.LmsLessonDataBean;
import com.argusoft.sewa.android.app.databean.LmsOptionFeedbackDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionBankDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionOptionDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuestionSetDataBean;
import com.argusoft.sewa.android.app.databean.LmsQuizCompletionMessage;
import com.argusoft.sewa.android.app.databean.LmsQuizConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsScenarioConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsSectionConfigDataBean;
import com.argusoft.sewa.android.app.databean.LmsSimulationAudioDataBean;
import com.argusoft.sewa.android.app.databean.LmsTopicDataBean;
import com.argusoft.sewa.android.app.model.FileDownloadBean;
import com.argusoft.sewa.android.app.model.LmsCourseBean;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.argusoft.sewa.android.app.util.WSConstants;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.Where;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLEncoder;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class LmsDownloadServiceImpl implements LmsDownloadService {
    Context context;
    Dao<FileDownloadBean, Integer> fileDownloadBeanDao;
    Dao<LmsCourseBean, Integer> lmsCourseBeanDao;
    LmsServiceImpl lmsService;

    private boolean isFileNotExistsOnLocal(Long l, String str) {
        File file = new File(SewaConstants.DIR_LMS_TEMP, str);
        if (file.exists()) {
            moveFile(l, file, str);
        }
        return !new File(SewaConstants.DIR_LMS, str).exists();
    }

    private boolean isFileExistsOnLocal(String str) {
        return new File(SewaConstants.getDirectoryPath(this.context, SewaConstants.DIR_LMS), str).exists();
    }

    private static void clearSharedPref(Context context) {
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(SewaConstants.LMS_DOWNLOAD_PREFS_NAME, 0).edit();
        editorEdit.clear();
        editorEdit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void deleteFile(Long l, String str) {
        Log.e(getClass().getSimpleName(), "deleteFile called for File : " + str);
        File file = new File(SewaConstants.DIR_LMS_TEMP, str);
        if (file.exists()) {
            file.delete();
        }
        clearSharedPref(this.context);
        try {
            List<FileDownloadBean> listQuery = this.fileDownloadBeanDao.queryBuilder().where().eq(FieldNameConstants.MEDIA_ID, l).query();
            if (listQuery == null || listQuery.isEmpty()) {
                return;
            }
            for (FileDownloadBean fileDownloadBean : listQuery) {
                fileDownloadBean.setNoOfAttempt(Integer.valueOf(fileDownloadBean.getNoOfAttempt().intValue() + 1));
                this.fileDownloadBeanDao.update((Dao<FileDownloadBean, Integer>) fileDownloadBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private void deleteLmsFile(Long l, String str) {
        Log.e(getClass().getSimpleName(), "deleteLmsFile called for File : " + str);
        File file = new File(SewaConstants.getDirectoryPath(this.context, SewaConstants.DIR_LMS), str);
        if (file.exists()) {
            file.delete();
        }
        File file2 = new File(SewaConstants.getDirectoryPath(this.context, SewaConstants.DIR_LMS_TEMP), str);
        if (file2.exists()) {
            file2.delete();
        }
        clearSharedPref(this.context);
        try {
            List<FileDownloadBean> listQuery = this.fileDownloadBeanDao.queryBuilder().where().eq(FieldNameConstants.MEDIA_ID, l).query();
            if (listQuery == null || listQuery.isEmpty()) {
                return;
            }
            for (FileDownloadBean fileDownloadBean : listQuery) {
                fileDownloadBean.setNoOfAttempt(Integer.valueOf(fileDownloadBean.getNoOfAttempt().intValue() + 1));
                this.fileDownloadBeanDao.update((Dao<FileDownloadBean, Integer>) fileDownloadBean);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void moveFile(Long l, File file, String str) {
        file.renameTo(new File(SewaConstants.DIR_LMS, str));
        Log.i(getClass().getSimpleName(), "#### File moved to " + SewaConstants.DIR_LMS);
        clearSharedPref(this.context);
        try {
            DeleteBuilder<FileDownloadBean, Integer> deleteBuilder = this.fileDownloadBeanDao.deleteBuilder();
            deleteBuilder.where().eq(FieldNameConstants.MEDIA_ID, l);
            deleteBuilder.delete();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsDownloadService
    public void startFileDownloading(Context context, Long l, String str) throws UnsupportedEncodingException {
        String strEncode;
        String str2 = WSConstants.REST_TECHO_SERVICE_URL + "getfileById?id=" + l;
        Log.i(getClass().getSimpleName(), "##### Download URL : " + str2);
        Uri uri = Uri.parse(str2);
        try {
            strEncode = URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            strEncode = str;
        }
        Uri uri2 = Uri.parse("file://" + SewaConstants.DIR_LMS_TEMP + strEncode);
        Log.i(getClass().getSimpleName(), "************Downloading started ***********");
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        DownloadManager.Request request = new DownloadManager.Request(uri);
        request.setMimeType("application/vnd.android.package-archive");
        request.setAllowedNetworkTypes(3).setAllowedOverRoaming(true).setDestinationUri(uri2);
        request.setTitle(UtilBean.getMyLabel(BuildConfig.HOME_TITLE_LIVE) + " - " + UtilBean.getMyLabel("Downloading LMS files"));
        request.setDescription(str);
        long jEnqueue = downloadManager.enqueue(request);
        SharedPreferences.Editor editorEdit = context.getSharedPreferences(SewaConstants.LMS_DOWNLOAD_PREFS_NAME, 0).edit();
        editorEdit.putLong(FieldNameConstants.DOWNLOAD_ID, jEnqueue);
        editorEdit.putLong(FieldNameConstants.MEDIA_ID, l.longValue());
        editorEdit.putString(FieldNameConstants.FILE_NAME, str);
        editorEdit.apply();
        Log.i(getClass().getSimpleName(), "#### Registering the Broadcast");
        registerBroadcastReceiver(context);
    }

    private void registerBroadcastReceiver(Context context) {
        context.registerReceiver(new BroadcastReceiver() { // from class: com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) throws UnsupportedEncodingException {
                String strEncode;
                Log.i(getClass().getSimpleName(), "#### Received the Download Broadcast");
                if (!"android.intent.action.DOWNLOAD_COMPLETE".equals(intent.getAction())) {
                    Log.i(getClass().getSimpleName(), "#### Broadcast Receiver: DOWNLOAD NOT COMPLETED");
                    return;
                }
                Log.i(getClass().getSimpleName(), "#### Broadcast Receiver: DOWNLOAD COMPLETED.");
                SharedPreferences sharedPreferences = context2.getSharedPreferences(SewaConstants.LMS_DOWNLOAD_PREFS_NAME, 0);
                long j = sharedPreferences.getLong(FieldNameConstants.DOWNLOAD_ID, 0L);
                Long lValueOf = Long.valueOf(sharedPreferences.getLong(FieldNameConstants.MEDIA_ID, 0L));
                String string = sharedPreferences.getString(FieldNameConstants.FILE_NAME, null);
                if (j != intent.getLongExtra("extra_download_id", -1L)) {
                    Log.i(getClass().getSimpleName(), "#### DOWNLOAD IDs ARE NOT SAME.");
                    return;
                }
                Cursor cursorQuery = ((DownloadManager) context2.getSystemService("download")).query(new DownloadManager.Query().setFilterById(j));
                if (cursorQuery.moveToFirst()) {
                    int i = cursorQuery.getInt(cursorQuery.getColumnIndex("status"));
                    if (i == 8) {
                        try {
                            strEncode = URLEncoder.encode(string, "UTF-8");
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                            strEncode = string;
                        }
                        File file = new File(URI.create("file://" + SewaConstants.DIR_LMS_TEMP + strEncode));
                        if (file.exists()) {
                            Log.i(getClass().getSimpleName(), "#### Downloaded successful : " + string);
                            LmsDownloadServiceImpl.this.moveFile(lValueOf, file, string);
                        }
                        LmsDownloadServiceImpl.this.startDownloading(context2);
                    } else if (i == 16) {
                        Log.i(getClass().getSimpleName(), "#### Download failed, Deleting all the files");
                        LmsDownloadServiceImpl.this.deleteFile(lValueOf, string);
                        LmsDownloadServiceImpl.this.startDownloading(context2);
                    }
                    cursorQuery.close();
                }
            }
        }, new IntentFilter("android.intent.action.DOWNLOAD_COMPLETE"));
    }

    public long getCourseSize(LmsCourseDataBean lmsCourseDataBean) {
        long jLongValue = 0;
        for (LmsTopicDataBean lmsTopicDataBean : lmsCourseDataBean.getTopics()) {
            if (lmsTopicDataBean.getTopicMedias() != null && !lmsTopicDataBean.getTopicMedias().isEmpty()) {
                for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean.getTopicMedias()) {
                    jLongValue += lmsLessonDataBean.getSize() != null ? lmsLessonDataBean.getSize().longValue() : 0L;
                }
            }
        }
        return jLongValue;
    }

    public long getAvailableInternalMemorySize() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
    }

    @Override // com.argusoft.sewa.android.app.core.LmsDownloadService
    public void addLmsMediaFilesToDownloadList() {
        try {
            DeleteBuilder<FileDownloadBean, Integer> deleteBuilder = this.fileDownloadBeanDao.deleteBuilder();
            deleteBuilder.where().like("filename", "LMS_MEDIA%");
            deleteBuilder.delete();
            ArrayList arrayList = new ArrayList();
            Iterator<LmsCourseBean> it = this.lmsCourseBeanDao.queryForAll().iterator();
            while (it.hasNext()) {
                LmsCourseDataBean lmsCourseDataBean = new LmsCourseDataBean(it.next());
                boolean z = true;
                this.lmsService.makeCourseDownloadable(lmsCourseDataBean.getCourseId(), getCourseSize(lmsCourseDataBean) <= getAvailableInternalMemorySize());
                if (getCourseSize(lmsCourseDataBean) > getAvailableInternalMemorySize()) {
                    z = false;
                }
                lmsCourseDataBean.setMediaDownloaded(Boolean.valueOf(z));
                if (lmsCourseDataBean.getArchived() == null || Boolean.FALSE.equals(lmsCourseDataBean.getArchived())) {
                    if (Boolean.TRUE.equals(lmsCourseDataBean.getMediaDownloaded())) {
                        addCourseTestConfigMediasForDownload(arrayList, lmsCourseDataBean.getTestConfigJson());
                        addQuestionSetFilesForDownload(arrayList, lmsCourseDataBean.getQuestionSet());
                        if (lmsCourseDataBean.getCourseImage() != null && lmsCourseDataBean.getCourseImage().getMediaId() != null && isFileNotExistsOnLocal(lmsCourseDataBean.getCourseImage().getMediaId(), UtilBean.getLMSFileName(lmsCourseDataBean.getCourseImage().getMediaId(), lmsCourseDataBean.getCourseImage().getMediaName()))) {
                            arrayList.add(new FileDownloadBean(lmsCourseDataBean.getCourseImage().getMediaId(), UtilBean.getLMSFileName(lmsCourseDataBean.getCourseImage().getMediaId(), lmsCourseDataBean.getCourseImage().getMediaName()), getExtensionFromFileName(lmsCourseDataBean.getCourseImage().getMediaExtension(), lmsCourseDataBean.getCourseImage().getMediaName()), 0, false));
                        }
                        if (lmsCourseDataBean.getTopics() != null && !lmsCourseDataBean.getTopics().isEmpty()) {
                            for (LmsTopicDataBean lmsTopicDataBean : lmsCourseDataBean.getTopics()) {
                                addQuestionSetFilesForDownload(arrayList, lmsTopicDataBean.getQuestionSet());
                                if (lmsTopicDataBean.getTopicMedias() != null && !lmsTopicDataBean.getTopicMedias().isEmpty()) {
                                    for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean.getTopicMedias()) {
                                        addQuestionSetFilesForDownload(arrayList, lmsLessonDataBean.getQuestionSet());
                                        addMediaFilesForDownload(arrayList, lmsLessonDataBean);
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (!arrayList.isEmpty()) {
                this.fileDownloadBeanDao.create(arrayList);
            }
            startDownloading(this.context);
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    private void addMediaFilesForDownload(List<FileDownloadBean> list, LmsLessonDataBean lmsLessonDataBean) {
        String lMSFileName = UtilBean.getLMSFileName(lmsLessonDataBean.getMediaId(), lmsLessonDataBean.getMediaFileName());
        if (lmsLessonDataBean.getMediaId() != null && isFileNotExistsOnLocal(lmsLessonDataBean.getMediaId(), lMSFileName)) {
            Log.i(getClass().getSimpleName(), "LMS File does not Exists on Local : " + lmsLessonDataBean.getMediaFileName());
            list.add(new FileDownloadBean(lmsLessonDataBean.getMediaId(), lMSFileName, getExtensionFromFileName(lmsLessonDataBean.getMediaExtension(), lmsLessonDataBean.getMediaFileName()), 0, false));
        }
        String lMSFileName2 = UtilBean.getLMSFileName(lmsLessonDataBean.getTranscriptFileId(), lmsLessonDataBean.getTranscriptFileName());
        if (lmsLessonDataBean.getTranscriptFileId() == null || !isFileNotExistsOnLocal(lmsLessonDataBean.getTranscriptFileId(), lMSFileName2)) {
            return;
        }
        Log.i(getClass().getSimpleName(), "LMS transcript File does not Exists on Local : " + lmsLessonDataBean.getMediaFileName());
        list.add(new FileDownloadBean(lmsLessonDataBean.getTranscriptFileId(), lMSFileName2, getExtensionFromFileName(lmsLessonDataBean.getTranscriptFileExtension(), lmsLessonDataBean.getTranscriptFileExtension()), 0, false));
    }

    private void addCourseTestConfigMediasForDownload(List<FileDownloadBean> list, Map<Integer, LmsQuizConfigDataBean> map) {
        if (map == null || map.isEmpty()) {
            return;
        }
        Iterator<Map.Entry<Integer, LmsQuizConfigDataBean>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            LmsQuizConfigDataBean value = it.next().getValue();
            if (value.getQuizCompletionMessage() != null) {
                LmsQuizCompletionMessage quizCompletionMessage = value.getQuizCompletionMessage();
                String lMSFileName = UtilBean.getLMSFileName(quizCompletionMessage.getMediaId(), quizCompletionMessage.getMediaName());
                if (quizCompletionMessage.getMediaId() != null && isFileNotExistsOnLocal(quizCompletionMessage.getMediaId(), lMSFileName)) {
                    list.add(new FileDownloadBean(quizCompletionMessage.getMediaId(), lMSFileName, getExtensionFromFileName(quizCompletionMessage.getMediaExtension(), quizCompletionMessage.getMediaName()), 0, false));
                }
            }
        }
    }

    private void addQuestionSetFilesForDownload(List<FileDownloadBean> list, List<LmsQuestionSetDataBean> list2) {
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        for (LmsQuestionSetDataBean lmsQuestionSetDataBean : list2) {
            if (lmsQuestionSetDataBean.getQuestionBank() != null && !lmsQuestionSetDataBean.getQuestionBank().isEmpty()) {
                for (LmsQuestionBankDataBean lmsQuestionBankDataBean : lmsQuestionSetDataBean.getQuestionBank()) {
                    if (lmsQuestionBankDataBean.getConfigJson() != null && !lmsQuestionBankDataBean.getConfigJson().isEmpty()) {
                        List<LmsSectionConfigDataBean> list3 = (List) new Gson().fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsSectionConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl.2
                        }.getType());
                        List<LmsScenarioConfigDataBean> list4 = (List) new Gson().fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsScenarioConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl.3
                        }.getType());
                        for (LmsSectionConfigDataBean lmsSectionConfigDataBean : list3) {
                            if (lmsSectionConfigDataBean.getQuestions() != null && !lmsSectionConfigDataBean.getQuestions().isEmpty()) {
                                Iterator<LmsQuestionConfigDataBean> it = lmsSectionConfigDataBean.getQuestions().iterator();
                                while (it.hasNext()) {
                                    addQuestionConfigFilesForDownload(list, it.next());
                                }
                            }
                        }
                        for (LmsScenarioConfigDataBean lmsScenarioConfigDataBean : list4) {
                            addScenarioQuestionConfigFilesForDownload(list, lmsScenarioConfigDataBean);
                            addScenarioAudioFilesForDownload(list, lmsScenarioConfigDataBean.getAudio());
                        }
                        for (LmsScenarioConfigDataBean lmsScenarioConfigDataBean2 : list4) {
                            if (lmsScenarioConfigDataBean2.getScenarioQuestions() != null && !lmsScenarioConfigDataBean2.getScenarioQuestions().isEmpty()) {
                                Iterator<LmsQuestionConfigDataBean> it2 = lmsScenarioConfigDataBean2.getScenarioQuestions().iterator();
                                while (it2.hasNext()) {
                                    addQuestionConfigFilesForDownload(list, it2.next());
                                }
                            }
                        }
                        for (LmsScenarioConfigDataBean lmsScenarioConfigDataBean3 : list4) {
                            if (lmsScenarioConfigDataBean3.getScenarioQuestions() != null && !lmsScenarioConfigDataBean3.getScenarioQuestions().isEmpty()) {
                                for (LmsQuestionConfigDataBean lmsQuestionConfigDataBean : lmsScenarioConfigDataBean3.getScenarioQuestions()) {
                                    if (lmsQuestionConfigDataBean.getOptions() != null && !lmsQuestionConfigDataBean.getOptions().isEmpty()) {
                                        Iterator<LmsQuestionOptionDataBean> it3 = lmsQuestionConfigDataBean.getOptions().iterator();
                                        while (it3.hasNext()) {
                                            addOptionFeedbackMediaForScenarioForDownload(list, it3.next().getOptionFeedback());
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private void addScenarioQuestionConfigFilesForDownload(List<FileDownloadBean> list, LmsScenarioConfigDataBean lmsScenarioConfigDataBean) {
        String lMSFileName = UtilBean.getLMSFileName(lmsScenarioConfigDataBean.getMediaId(), lmsScenarioConfigDataBean.getMediaName());
        if (lmsScenarioConfigDataBean.getMediaId() == null || !isFileNotExistsOnLocal(lmsScenarioConfigDataBean.getMediaId(), lMSFileName)) {
            return;
        }
        list.add(new FileDownloadBean(lmsScenarioConfigDataBean.getMediaId(), lMSFileName, getExtensionFromFileName(lmsScenarioConfigDataBean.getMediaExtension(), lmsScenarioConfigDataBean.getMediaName()), 0, false));
    }

    private void addScenarioAudioFilesForDownload(List<FileDownloadBean> list, LmsSimulationAudioDataBean lmsSimulationAudioDataBean) {
        if (lmsSimulationAudioDataBean != null) {
            String lMSFileName = UtilBean.getLMSFileName(lmsSimulationAudioDataBean.getMediaId(), lmsSimulationAudioDataBean.getMediaName());
            if (lmsSimulationAudioDataBean.getMediaId() == null || !isFileNotExistsOnLocal(lmsSimulationAudioDataBean.getMediaId(), lMSFileName)) {
                return;
            }
            list.add(new FileDownloadBean(lmsSimulationAudioDataBean.getMediaId(), lMSFileName, getExtensionFromFileName(lmsSimulationAudioDataBean.getMediaExtension(), lmsSimulationAudioDataBean.getMediaName()), 0, false));
        }
    }

    private void addOptionFeedbackMediaForScenarioForDownload(List<FileDownloadBean> list, LmsOptionFeedbackDataBean lmsOptionFeedbackDataBean) {
        String lMSFileName = UtilBean.getLMSFileName(lmsOptionFeedbackDataBean.getMediaId(), lmsOptionFeedbackDataBean.getMediaName());
        if (lmsOptionFeedbackDataBean.getMediaId() == null || !isFileNotExistsOnLocal(lmsOptionFeedbackDataBean.getMediaId(), lMSFileName)) {
            return;
        }
        list.add(new FileDownloadBean(lmsOptionFeedbackDataBean.getMediaId(), lMSFileName, getExtensionFromFileName(lmsOptionFeedbackDataBean.getMediaExtension(), lmsOptionFeedbackDataBean.getMediaName()), 0, false));
    }

    private void addQuestionConfigFilesForDownload(List<FileDownloadBean> list, LmsQuestionConfigDataBean lmsQuestionConfigDataBean) {
        String lMSFileName = UtilBean.getLMSFileName(lmsQuestionConfigDataBean.getMediaId(), lmsQuestionConfigDataBean.getMediaName());
        if (lmsQuestionConfigDataBean.getMediaId() != null && isFileNotExistsOnLocal(lmsQuestionConfigDataBean.getMediaId(), lMSFileName)) {
            list.add(new FileDownloadBean(lmsQuestionConfigDataBean.getMediaId(), lMSFileName, getExtensionFromFileName(lmsQuestionConfigDataBean.getMediaExtension(), lmsQuestionConfigDataBean.getMediaName()), 0, false));
        }
        addQuestionOptionMediaForDownload(list, lmsQuestionConfigDataBean.getOptions());
        addQuestionOptionMediaForDownload(list, lmsQuestionConfigDataBean.getLhs());
        addQuestionOptionMediaForDownload(list, lmsQuestionConfigDataBean.getRhs());
    }

    private void addQuestionOptionMediaForDownload(List<FileDownloadBean> list, List<LmsQuestionOptionDataBean> list2) {
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean : list2) {
            String lMSFileName = UtilBean.getLMSFileName(lmsQuestionOptionDataBean.getMediaId(), lmsQuestionOptionDataBean.getMediaName());
            if (lmsQuestionOptionDataBean.getMediaId() != null && isFileNotExistsOnLocal(lmsQuestionOptionDataBean.getMediaId(), lMSFileName)) {
                list.add(new FileDownloadBean(lmsQuestionOptionDataBean.getMediaId(), lMSFileName, getExtensionFromFileName(lmsQuestionOptionDataBean.getMediaExtension(), lmsQuestionOptionDataBean.getMediaName()), 0, false));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startDownloading(Context context) throws UnsupportedEncodingException {
        try {
            Where<FileDownloadBean, Integer> where = this.fileDownloadBeanDao.queryBuilder().where();
            FileDownloadBean fileDownloadBeanQueryForFirst = where.and(where.lt("noOfAttempt", 3), where.eq(FieldNameConstants.IS_DOWNLOADED, false), new Where[0]).queryForFirst();
            if (fileDownloadBeanQueryForFirst != null) {
                startFileDownloading(context, fileDownloadBeanQueryForFirst.getMediaId(), fileDownloadBeanQueryForFirst.getFileName());
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static String getExtensionFromFileName(String str, String str2) {
        if (str != null) {
            return str;
        }
        if (str2 == null || str2.isEmpty()) {
            return null;
        }
        return str2.substring(str2.lastIndexOf(GlobalTypes.DOT_SEPARATOR));
    }

    @Override // com.argusoft.sewa.android.app.core.LmsDownloadService
    public void addCourseMediaToDownload(Integer num) {
        try {
            LmsCourseBean lmsCourseBeanQueryForFirst = this.lmsCourseBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).queryForFirst();
            if (lmsCourseBeanQueryForFirst != null) {
                LmsCourseDataBean lmsCourseDataBean = new LmsCourseDataBean(lmsCourseBeanQueryForFirst);
                DeleteBuilder<FileDownloadBean, Integer> deleteBuilder = this.fileDownloadBeanDao.deleteBuilder();
                deleteBuilder.where().like("filename", "LMS_MEDIA%");
                deleteBuilder.delete();
                ArrayList arrayList = new ArrayList();
                boolean z = true;
                this.lmsService.makeCourseDownloadable(lmsCourseDataBean.getCourseId(), getCourseSize(lmsCourseDataBean) <= getAvailableInternalMemorySize());
                if (getCourseSize(lmsCourseDataBean) > getAvailableInternalMemorySize()) {
                    z = false;
                }
                lmsCourseDataBean.setMediaDownloaded(Boolean.valueOf(z));
                if ((lmsCourseDataBean.getArchived() == null || Boolean.FALSE.equals(lmsCourseDataBean.getArchived())) && Boolean.TRUE.equals(lmsCourseDataBean.getMediaDownloaded())) {
                    addCourseTestConfigMediasForDownload(arrayList, lmsCourseDataBean.getTestConfigJson());
                    addQuestionSetFilesForDownload(arrayList, lmsCourseDataBean.getQuestionSet());
                    if (lmsCourseDataBean.getCourseImage() != null && lmsCourseDataBean.getCourseImage().getMediaId() != null && isFileNotExistsOnLocal(lmsCourseDataBean.getCourseImage().getMediaId(), UtilBean.getLMSFileName(lmsCourseDataBean.getCourseImage().getMediaId(), lmsCourseDataBean.getCourseImage().getMediaName()))) {
                        arrayList.add(new FileDownloadBean(lmsCourseDataBean.getCourseImage().getMediaId(), UtilBean.getLMSFileName(lmsCourseDataBean.getCourseImage().getMediaId(), lmsCourseDataBean.getCourseImage().getMediaName()), getExtensionFromFileName(lmsCourseDataBean.getCourseImage().getMediaExtension(), lmsCourseDataBean.getCourseImage().getMediaName()), 0, false));
                    }
                    if (lmsCourseDataBean.getTopics() != null && !lmsCourseDataBean.getTopics().isEmpty()) {
                        for (LmsTopicDataBean lmsTopicDataBean : lmsCourseDataBean.getTopics()) {
                            addQuestionSetFilesForDownload(arrayList, lmsTopicDataBean.getQuestionSet());
                            if (lmsTopicDataBean.getTopicMedias() != null && !lmsTopicDataBean.getTopicMedias().isEmpty()) {
                                for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean.getTopicMedias()) {
                                    addQuestionSetFilesForDownload(arrayList, lmsLessonDataBean.getQuestionSet());
                                    addMediaFilesForDownload(arrayList, lmsLessonDataBean);
                                }
                            }
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    this.fileDownloadBeanDao.create(arrayList);
                }
                startDownloading(this.context);
            }
        } catch (Exception e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    @Override // com.argusoft.sewa.android.app.core.LmsDownloadService
    public void deleteCourseMedia(Integer num) {
        try {
            LmsCourseBean lmsCourseBeanQueryForFirst = this.lmsCourseBeanDao.queryBuilder().where().eq(FieldNameConstants.COURSE_ID, num).queryForFirst();
            if (lmsCourseBeanQueryForFirst != null) {
                LmsCourseDataBean lmsCourseDataBean = new LmsCourseDataBean(lmsCourseBeanQueryForFirst);
                Map<Integer, LmsQuizConfigDataBean> testConfigJson = lmsCourseDataBean.getTestConfigJson();
                List<LmsQuestionSetDataBean> questionSet = lmsCourseDataBean.getQuestionSet();
                if (testConfigJson != null && !testConfigJson.isEmpty()) {
                    Iterator<Map.Entry<Integer, LmsQuizConfigDataBean>> it = testConfigJson.entrySet().iterator();
                    while (it.hasNext()) {
                        LmsQuizConfigDataBean value = it.next().getValue();
                        if (value.getQuizCompletionMessage() != null) {
                            LmsQuizCompletionMessage quizCompletionMessage = value.getQuizCompletionMessage();
                            String lMSFileName = UtilBean.getLMSFileName(quizCompletionMessage.getMediaId(), quizCompletionMessage.getMediaName());
                            if (quizCompletionMessage.getMediaId() != null && isFileExistsOnLocal(lMSFileName)) {
                                deleteLmsFile(quizCompletionMessage.getMediaId(), lMSFileName);
                            }
                        }
                    }
                }
                deleteQuestionSetFiles(questionSet);
                if (lmsCourseDataBean.getTopics() != null && !lmsCourseDataBean.getTopics().isEmpty()) {
                    for (LmsTopicDataBean lmsTopicDataBean : lmsCourseDataBean.getTopics()) {
                        deleteQuestionSetFiles(lmsTopicDataBean.getQuestionSet());
                        if (lmsTopicDataBean.getTopicMedias() != null && !lmsTopicDataBean.getTopicMedias().isEmpty()) {
                            for (LmsLessonDataBean lmsLessonDataBean : lmsTopicDataBean.getTopicMedias()) {
                                deleteQuestionSetFiles(lmsLessonDataBean.getQuestionSet());
                                deleteMediaFiles(lmsLessonDataBean);
                            }
                        }
                    }
                }
            }
        } catch (SQLException e) {
            Log.e(getClass().getSimpleName(), null, e);
        }
    }

    private void deleteMediaFiles(LmsLessonDataBean lmsLessonDataBean) {
        String lMSFileName = UtilBean.getLMSFileName(lmsLessonDataBean.getMediaId(), lmsLessonDataBean.getMediaFileName());
        if (lmsLessonDataBean.getMediaId() != null && isFileExistsOnLocal(lMSFileName)) {
            Log.i(getClass().getSimpleName(), "LMS File does Exists on Local : " + lmsLessonDataBean.getMediaFileName());
            deleteLmsFile(lmsLessonDataBean.getMediaId(), lMSFileName);
        }
        String lMSFileName2 = UtilBean.getLMSFileName(lmsLessonDataBean.getTranscriptFileId(), lmsLessonDataBean.getTranscriptFileName());
        if (lmsLessonDataBean.getTranscriptFileId() == null || !isFileExistsOnLocal(lMSFileName2)) {
            return;
        }
        Log.i(getClass().getSimpleName(), "LMS transcript File does Exists on Local : " + lmsLessonDataBean.getMediaFileName());
        deleteLmsFile(lmsLessonDataBean.getTranscriptFileId(), lMSFileName);
    }

    private void deleteQuestionSetFiles(List<LmsQuestionSetDataBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (LmsQuestionSetDataBean lmsQuestionSetDataBean : list) {
            if (lmsQuestionSetDataBean.getQuestionBank() != null && !lmsQuestionSetDataBean.getQuestionBank().isEmpty()) {
                for (LmsQuestionBankDataBean lmsQuestionBankDataBean : lmsQuestionSetDataBean.getQuestionBank()) {
                    if (lmsQuestionBankDataBean.getConfigJson() != null && !lmsQuestionBankDataBean.getConfigJson().isEmpty()) {
                        for (LmsSectionConfigDataBean lmsSectionConfigDataBean : (List) new Gson().fromJson(lmsQuestionBankDataBean.getConfigJson(), new TypeToken<List<LmsSectionConfigDataBean>>() { // from class: com.argusoft.sewa.android.app.core.impl.LmsDownloadServiceImpl.4
                        }.getType())) {
                            if (lmsSectionConfigDataBean.getQuestions() != null && !lmsSectionConfigDataBean.getQuestions().isEmpty()) {
                                Iterator<LmsQuestionConfigDataBean> it = lmsSectionConfigDataBean.getQuestions().iterator();
                                while (it.hasNext()) {
                                    deleteQuestionConfigFiles(it.next());
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    private void deleteQuestionConfigFiles(LmsQuestionConfigDataBean lmsQuestionConfigDataBean) {
        String lMSFileName = UtilBean.getLMSFileName(lmsQuestionConfigDataBean.getMediaId(), lmsQuestionConfigDataBean.getMediaName());
        if (lmsQuestionConfigDataBean.getMediaId() != null && isFileExistsOnLocal(lMSFileName)) {
            deleteLmsFile(lmsQuestionConfigDataBean.getMediaId(), lMSFileName);
        }
        deleteQuestionOptionMedia(lmsQuestionConfigDataBean.getOptions());
        deleteQuestionOptionMedia(lmsQuestionConfigDataBean.getLhs());
        deleteQuestionOptionMedia(lmsQuestionConfigDataBean.getRhs());
    }

    private void deleteQuestionOptionMedia(List<LmsQuestionOptionDataBean> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (LmsQuestionOptionDataBean lmsQuestionOptionDataBean : list) {
            String lMSFileName = UtilBean.getLMSFileName(lmsQuestionOptionDataBean.getMediaId(), lmsQuestionOptionDataBean.getMediaName());
            if (lmsQuestionOptionDataBean.getMediaId() != null && isFileExistsOnLocal(lMSFileName)) {
                deleteLmsFile(lmsQuestionOptionDataBean.getMediaId(), lMSFileName);
            }
        }
    }
}

package com.argusoft.sewa.android.app.component.listeners;

import android.media.MediaRecorder;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.datastructure.QueFormBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.morbidities.constants.MorbiditiesConstant;
import com.argusoft.sewa.android.app.util.DynamicUtils;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import java.io.File;
import java.io.IOException;
import java.util.Date;

/* loaded from: classes.dex */
public class AudioTextBoxListener implements View.OnFocusChangeListener, View.OnClickListener {
    private static final String TAG = "AudioTextBoxListener";
    private final String[] answer;
    private EditText editText;
    private String fileType;
    private boolean flag;
    private final File mFileName;
    private MediaRecorder mRecorder = null;
    private final QueFormBean queFormBean;

    public AudioTextBoxListener(QueFormBean queFormBean) {
        this.queFormBean = queFormBean;
        String question = queFormBean.getQuestion();
        this.fileType = question;
        if (question != null) {
            if (question.trim().equalsIgnoreCase("District:")) {
                this.fileType = GlobalTypes.FILE_TYPE_AUDIO_DISTRICT;
            } else if (this.fileType.trim().equalsIgnoreCase("Block:")) {
                this.fileType = GlobalTypes.FILE_TYPE_AUDIO_BLOCK;
            } else if (this.fileType.trim().equalsIgnoreCase("Village:")) {
                this.fileType = GlobalTypes.FILE_TYPE_AUDIO_VILLAGE;
            } else {
                this.fileType = "Other_Audio";
            }
        }
        this.answer = new String[]{"", ""};
        this.flag = true;
        this.mFileName = new File(SewaConstants.DIR_AUDIO + DynamicUtils.getLoopId(queFormBean) + "_" + new Date().getTime() + GlobalTypes.AUDIO_RECORD_FORMAT);
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z) {
        EditText editText = (EditText) view;
        this.editText = editText;
        if (z) {
            return;
        }
        this.answer[0] = editText.getText().toString();
        setAnswer();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LinearLayout linearLayout;
        if (this.editText == null && (linearLayout = (LinearLayout) this.queFormBean.getQuestionTypeView()) != null) {
            this.editText = (EditText) linearLayout.findViewById(IdConstants.AUDIO_TEXT_BOX_ID);
        }
        ImageView imageView = (ImageView) view;
        try {
            try {
                if (this.flag) {
                    startRecording();
                    imageView.setImageResource(R.drawable.stop_audio);
                    EditText editText = this.editText;
                    if (editText != null) {
                        editText.setHint(LabelConstants.AUDIO_RECORDING);
                    }
                    this.flag = !this.flag;
                    setMandatory(true);
                    return;
                }
                try {
                    stopRecording();
                    imageView.setImageResource(R.drawable.record_audio);
                    EditText editText2 = this.editText;
                    if (editText2 != null) {
                        editText2.setHint(LabelConstants.AUDIO_RECORDED);
                    }
                    this.flag = !this.flag;
                    setMandatory(false);
                } catch (Exception e) {
                    Log.e(getClass().getSimpleName(), LabelConstants.RECORDER_NOT_STOPPED);
                    Log.e(getClass().getSimpleName(), null, e);
                    this.answer[1] = "";
                    imageView.setImageResource(R.drawable.stop_audio);
                    EditText editText3 = this.editText;
                    if (editText3 != null) {
                        editText3.setHint(LabelConstants.AUDIO_NOT_RECORDED);
                    }
                    setMandatory(true);
                }
            } catch (IOException e2) {
                Log.e(getClass().getSimpleName(), LabelConstants.ERROR_IN_AUDIO_RECORDING);
                Log.e(getClass().getSimpleName(), null, e2);
                imageView.setImageResource(R.drawable.record_audio);
                EditText editText4 = this.editText;
                if (editText4 != null) {
                    editText4.setHint(LabelConstants.AUDIO_NOT_RECORDED);
                }
                setMandatory(false);
            } finally {
                this.answer[1] = "";
            }
        } finally {
            setAnswer();
        }
    }

    private void startRecording() throws IllegalStateException, IOException {
        MediaRecorder mediaRecorder = new MediaRecorder();
        this.mRecorder = mediaRecorder;
        mediaRecorder.setAudioSource(1);
        this.mRecorder.setOutputFormat(3);
        this.mRecorder.setOutputFile(this.mFileName.getAbsolutePath());
        this.mRecorder.setAudioEncoder(1);
        this.mRecorder.prepare();
        this.mRecorder.start();
        Log.i(TAG, "Recording is started");
    }

    private void stopRecording() throws IllegalStateException {
        this.mRecorder.stop();
        this.mRecorder.release();
        this.mRecorder = null;
        Log.i(TAG, "Recording is stopped");
        this.answer[1] = this.mFileName.getName();
        SharedStructureData.audioFilesToUpload.put(this.mFileName.getName(), this.fileType);
    }

    private void setAnswer() {
        String str;
        String str2 = this.answer[0];
        if ((str2 != null && str2.trim().length() > 0) || ((str = this.answer[1]) != null && str.trim().length() > 0)) {
            this.queFormBean.setAnswer(this.answer[0] + GlobalTypes.KEY_VALUE_SEPARATOR + this.answer[1]);
        } else {
            this.queFormBean.setAnswer(null);
        }
        Log.i(getClass().getSimpleName(), this.queFormBean.getQuestion() + MorbiditiesConstant.EQUALS_SYMBOL + this.queFormBean.getAnswer());
    }

    private void setMandatory(boolean z) {
        if (z) {
            this.queFormBean.setAnswer(null);
            this.queFormBean.setMandatorymessage(LabelConstants.STOP_RECORDING);
            this.queFormBean.setIsmandatory("T");
            return;
        }
        this.queFormBean.setIsmandatory("F");
    }
}

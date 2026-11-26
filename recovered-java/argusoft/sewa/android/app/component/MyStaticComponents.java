package com.argusoft.sewa.android.app.component;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.text.Html;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.cardview.widget.CardView;
import androidx.core.content.ContextCompat;
import androidx.core.view.GravityCompat;
import androidx.core.widget.NestedScrollView;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.activity.CustomMandatoryVideoPlayerActivity;
import com.argusoft.sewa.android.app.activity.CustomVideoPlayerActivity;
import com.argusoft.sewa.android.app.component.PagingListView;
import com.argusoft.sewa.android.app.constants.IdConstants;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.FieldValueMobDataBean;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.datastructure.SharedStructureData;
import com.argusoft.sewa.android.app.util.GlobalTypes;
import com.argusoft.sewa.android.app.util.SewaConstants;
import com.argusoft.sewa.android.app.util.SewaUtil;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.checkbox.MaterialCheckBox;
import com.google.android.material.radiobutton.MaterialRadioButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.textview.MaterialTextView;
import com.tooltip.Tooltip;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class MyStaticComponents {
    private static final String TAG = "MyStaticComponents";

    private MyStaticComponents() {
        throw new IllegalStateException("Utility Class");
    }

    public static MaterialTextView getMaterialTextView(Context context, String str, int i, int i2, boolean z) {
        MaterialTextView materialTextView = new MaterialTextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.setMargins(0, 0, 0, 5);
        if (i2 != -1) {
            materialTextView.setTextAppearance(context, i2);
        }
        if (str == null || str.length() == 0) {
            return null;
        }
        materialTextView.setText(UtilBean.getMyLabel(str));
        if (i != -1) {
            materialTextView.setId(i);
        }
        if (z) {
            materialTextView.setGravity(17);
        }
        materialTextView.setPadding(0, 15, 0, 15);
        materialTextView.setLayoutParams(layoutParams);
        return materialTextView;
    }

    public static MaterialTextView generateTitleView(Context context, String str) {
        return getMaterialTextView(context, str, -1, R.style.CustomTitleView, true);
    }

    public static MaterialTextView generateSubTitleView(Context context, String str) {
        return getMaterialTextView(context, str, -1, R.style.CustomSubtitleView, false);
    }

    public static MaterialTextView generateMandatorySubTitleView(Context context, String str) {
        return getMandatoryTextMaterialTextView(context, str, -1, R.style.CustomSubtitleView, false);
    }

    public static MaterialTextView generateInstructionView(Context context, String str) {
        return getMaterialTextView(context, str, -1, R.style.CustomInstructionView, false);
    }

    public static MaterialTextView generateMandatoryInstructionView(Context context, String str) {
        return getMandatoryTextMaterialTextView(context, str, -1, R.style.CustomInstructionView, false);
    }

    public static MaterialTextView generateAnswerView(Context context, String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        MaterialTextView materialTextView = getMaterialTextView(context, str, -1, R.style.CustomAnswerView, false);
        if (materialTextView != null) {
            materialTextView.setPadding(0, 0, 0, 15);
            materialTextView.setLineSpacing(10.0f, 1.0f);
        }
        return materialTextView;
    }

    public static MaterialTextView generateBoldAnswerView(Context context, String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        MaterialTextView materialTextView = getMaterialTextView(context, str, -1, R.style.CustomBoldAnswerView, false);
        if (materialTextView != null) {
            materialTextView.setPadding(0, 0, 0, 15);
        }
        return materialTextView;
    }

    public static MaterialTextView generateLabelView(Context context, String str) {
        if (str == null || str.length() == 0) {
            return null;
        }
        MaterialTextView materialTextView = getMaterialTextView(context, str, -1, R.style.CustomLabelView, false);
        if (materialTextView != null) {
            materialTextView.setPadding(0, 15, 0, 10);
        }
        return materialTextView;
    }

    public static LinearLayout generateQuestionViewWithTooltip(String str, String str2, Context context, String str3) {
        if (str3 == null || str3.length() == 0) {
            return null;
        }
        LinearLayout linearLayout = getLinearLayout(context, -1, 0, null);
        linearLayout.setGravity(16);
        MaterialTextView materialTextView = getMaterialTextView(context, str3, 1, R.style.CustomQuestionView, false);
        if (str != null && !str.isEmpty() && materialTextView != null) {
            addHelpVideo(str, materialTextView, context, str3);
        }
        materialTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 200.0f));
        linearLayout.addView(materialTextView);
        if (str2 != null && !str2.isEmpty() && materialTextView != null) {
            ImageView imageView = getImageView(context, 2, R.drawable.ic_info_black, null);
            String myLabel = UtilBean.getMyLabel(str2);
            Tooltip.Builder text = new Tooltip.Builder(imageView).setCancelable(true).setDismissOnClick(true).setBackgroundColor(ContextCompat.getColor(context, R.color.colorSecondary)).setTypeface(SharedStructureData.typeface).setTextColor(-1).setText(myLabel);
            if (myLabel.length() < 40) {
                text.setGravity(GravityCompat.END);
            }
            final Tooltip tooltipBuild = text.build();
            View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (tooltipBuild.isShowing()) {
                        tooltipBuild.dismiss();
                    } else {
                        tooltipBuild.show();
                    }
                }
            };
            imageView.setOnClickListener(onClickListener);
            materialTextView.setOnClickListener(onClickListener);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
            layoutParams.setMargins(0, 10, 0, 10);
            imageView.setLayoutParams(layoutParams);
            linearLayout.addView(imageView);
        }
        return linearLayout;
    }

    public static MaterialTextView generateQuestionView(String str, String str2, Context context, String str3) {
        if (str3 == null || str3.length() == 0) {
            return null;
        }
        MaterialTextView materialTextView = getMaterialTextView(context, str3, -1, R.style.CustomQuestionView, false);
        if (str != null && !str.isEmpty() && materialTextView != null) {
            addHelpVideo(str, materialTextView, context, str3);
        }
        if (str2 != null && !str2.isEmpty() && materialTextView != null) {
            addTooltip(str2, materialTextView, context);
        }
        return materialTextView;
    }

    public static MaterialTextView generateMandatoryQuestionView(String str, String str2, Context context, String str3) {
        if (str3 == null || str3.length() == 0) {
            return null;
        }
        MaterialTextView mandatoryTextMaterialTextView = getMandatoryTextMaterialTextView(context, str3, -1, R.style.CustomQuestionView, false);
        if (str != null && !str.isEmpty() && mandatoryTextMaterialTextView != null) {
            addHelpVideo(str, mandatoryTextMaterialTextView, context, str3);
        }
        return mandatoryTextMaterialTextView;
    }

    public static MaterialTextView getMandatoryTextMaterialTextView(Context context, String str, int i, int i2, boolean z) {
        MaterialTextView materialTextView = new MaterialTextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        if (i2 != -1) {
            materialTextView.setTextAppearance(context, i2);
        }
        if (str == null || str.length() == 0) {
            return null;
        }
        materialTextView.setText(Html.fromHtml(UtilBean.getMyLabel(str).concat("<font color=#cc0029> *</font>")));
        if (i != -1) {
            materialTextView.setId(i);
        }
        if (z) {
            materialTextView.setGravity(17);
        }
        materialTextView.setPadding(0, 15, 0, 15);
        materialTextView.setLayoutParams(layoutParams);
        return materialTextView;
    }

    public static MaterialTextView getListTitleView(Context context, String str) {
        if (str == null) {
            return null;
        }
        MaterialTextView materialTextView = new MaterialTextView(context);
        materialTextView.setPadding(0, 20, 20, 20);
        materialTextView.setTextAppearance(context, R.style.ListTitleView);
        materialTextView.setText(UtilBean.getMyLabel(str));
        return materialTextView;
    }

    private static void addTooltip(String str, MaterialTextView materialTextView, Context context) {
        String myLabel = UtilBean.getMyLabel(str);
        Tooltip.Builder text = new Tooltip.Builder(materialTextView).setCancelable(true).setDismissOnClick(true).setBackgroundColor(ContextCompat.getColor(context, R.color.colorSecondary)).setTypeface(SharedStructureData.typeface).setTextColor(-1).setText(myLabel);
        if (myLabel.length() < 40) {
            text.setGravity(GravityCompat.END);
        }
        final Tooltip tooltipBuild = text.build();
        materialTextView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (tooltipBuild.isShowing()) {
                    tooltipBuild.dismiss();
                } else {
                    tooltipBuild.show();
                }
            }
        });
    }

    public static TextInputLayout getFilteredEditText(Context context, String str, int i, int i2, int i3, final String str2) {
        final TextInputLayout textInputLayout = new TextInputLayout(context);
        textInputLayout.setEndIconMode(2);
        textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (textInputLayout.getEditText() != null) {
                    textInputLayout.getEditText().setText((CharSequence) null);
                    textInputLayout.requestFocus();
                }
            }
        });
        textInputLayout.setHintEnabled(false);
        textInputLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -2));
        TextInputEditText textInputEditText = new TextInputEditText(context);
        InputFilter inputFilter = new InputFilter() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.4
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i4, int i5, Spanned spanned, int i6, int i7) {
                StringBuilder sb = new StringBuilder(i5 - i4);
                boolean z = true;
                for (int i8 = i4; i8 < i5; i8++) {
                    char cCharAt = charSequence.charAt(i8);
                    int type = Character.getType(cCharAt);
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    if (isCharAllowed(cCharAt)) {
                        sb.append(cCharAt);
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    return null;
                }
                if (!(charSequence instanceof Spanned)) {
                    return sb;
                }
                SpannableString spannableString = new SpannableString(sb);
                TextUtils.copySpansFrom((Spanned) charSequence, i4, sb.length(), null, spannableString, 0);
                return spannableString;
            }

            private boolean isCharAllowed(char c) {
                return !str2.contains(String.valueOf(c));
            }
        };
        if (i != -1) {
            textInputEditText.setId(i);
        }
        if (i2 > 0) {
            textInputEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2), inputFilter});
        } else {
            textInputEditText.setFilters(new InputFilter[]{inputFilter});
        }
        if (i3 != -1) {
            textInputEditText.setInputType(i3);
        }
        if (str != null) {
            textInputEditText.setHint(str);
        }
        textInputLayout.addView(textInputEditText);
        return textInputLayout;
    }

    private static void addHelpVideo(final String str, MaterialTextView materialTextView, final Context context, String str2) {
        boolean zEndsWith = materialTextView.getText().toString().trim().endsWith(GlobalTypes.MULTI_SELECT_SEPARATOR);
        if (str.contains("Audio")) {
            final List<FieldValueMobDataBean> dataMapValues = UtilBean.getDataMapValues(str);
            StringBuilder sb = new StringBuilder();
            sb.append(str2);
            sb.append(" 🔈");
            sb.append(zEndsWith ? " <font color=#cc0029>*</font>" : "");
            String string = sb.toString();
            final MediaPlayer mediaPlayer = new MediaPlayer();
            SpannableString spannableString = new SpannableString(string);
            spannableString.setSpan(new ClickableSpan() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.5
                /* JADX WARN: Type inference failed for: r1v1, types: [com.argusoft.sewa.android.app.component.MyStaticComponents$5$1] */
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    new Thread() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.5.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() throws IllegalStateException, IOException, SecurityException, IllegalArgumentException {
                            if (dataMapValues == null || dataMapValues.isEmpty()) {
                                return;
                            }
                            if (mediaPlayer.isPlaying()) {
                                mediaPlayer.stop();
                                mediaPlayer.reset();
                                return;
                            }
                            String str3 = SewaConstants.DIR_DOWNLOADED + ((FieldValueMobDataBean) dataMapValues.get(0)).getValue();
                            if (UtilBean.isFileExists(str3)) {
                                Log.i(MyStaticComponents.TAG, str3 + " is found and ready to play");
                                try {
                                    mediaPlayer.setDataSource(str3);
                                    mediaPlayer.prepare();
                                    mediaPlayer.start();
                                } catch (IOException e) {
                                    Log.e(MyStaticComponents.TAG, null, e);
                                }
                            }
                        }
                    }.start();
                }
            }, str2.length() + 1, string.length(), 33);
            materialTextView.setText(Html.fromHtml(String.valueOf(spannableString)));
        } else {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(str2);
            sb2.append(" 🎬");
            sb2.append(zEndsWith ? " <font color=#cc0029>*</font>" : "");
            String string2 = sb2.toString();
            SpannableString spannableString2 = new SpannableString(string2);
            spannableString2.setSpan(new ClickableSpan() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.6
                /* JADX WARN: Type inference failed for: r1v1, types: [com.argusoft.sewa.android.app.component.MyStaticComponents$6$1] */
                @Override // android.text.style.ClickableSpan
                public void onClick(View view) {
                    new Thread() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.6.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            Intent intent = new Intent(context, (Class<?>) CustomVideoPlayerActivity.class);
                            intent.putExtra(GlobalTypes.DATA_MAP, str);
                            context.startActivity(intent);
                        }
                    }.start();
                }
            }, str2.length() + 1, string2.length(), 33);
            materialTextView.setText(Html.fromHtml(String.valueOf(spannableString2)));
        }
        materialTextView.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public static TextInputLayout getEditText(Context context, String str, int i, int i2, int i3) {
        final TextInputLayout textInputLayout = new TextInputLayout(context);
        textInputLayout.setEndIconMode(2);
        textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (textInputLayout.getEditText() != null) {
                    textInputLayout.getEditText().setText((CharSequence) null);
                    textInputLayout.requestFocus();
                }
            }
        });
        textInputLayout.setHintEnabled(false);
        TextInputEditText textInputEditText = new TextInputEditText(context);
        InputFilter inputFilter = new InputFilter() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.8
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i4, int i5, Spanned spanned, int i6, int i7) {
                StringBuilder sb = new StringBuilder(i5 - i4);
                boolean z = true;
                for (int i8 = i4; i8 < i5; i8++) {
                    char cCharAt = charSequence.charAt(i8);
                    int type = Character.getType(cCharAt);
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    if (isCharAllowed(cCharAt)) {
                        sb.append(cCharAt);
                    } else {
                        z = false;
                    }
                }
                if (z) {
                    return null;
                }
                if (!(charSequence instanceof Spanned)) {
                    return sb;
                }
                SpannableString spannableString = new SpannableString(sb);
                TextUtils.copySpansFrom((Spanned) charSequence, i4, sb.length(), null, spannableString, 0);
                return spannableString;
            }

            private boolean isCharAllowed(char c) {
                return !"_~#^&`|$%*!@()[]<>{}\":;?+=×÷€£¥₩%《》¡¿¤•".contains(String.valueOf(c));
            }
        };
        if (i != -1) {
            textInputEditText.setId(i);
        }
        if (i2 > 0) {
            textInputEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2), inputFilter});
        } else {
            textInputEditText.setFilters(new InputFilter[]{inputFilter});
        }
        if (i3 != -1) {
            textInputEditText.setInputType(i3);
        }
        if (str != null) {
            textInputEditText.setHint(str);
        }
        textInputLayout.addView(textInputEditText);
        textInputLayout.requestLayout();
        return textInputLayout;
    }

    public static TextInputLayout getEditTextWithSpecialCharacter(Context context, String str, int i, int i2, int i3) {
        final TextInputLayout textInputLayout = new TextInputLayout(context);
        textInputLayout.setEndIconMode(2);
        textInputLayout.setEndIconOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.9
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (textInputLayout.getEditText() != null) {
                    textInputLayout.getEditText().setText((CharSequence) null);
                    textInputLayout.requestFocus();
                }
            }
        });
        textInputLayout.setHintEnabled(false);
        TextInputEditText textInputEditText = new TextInputEditText(context);
        InputFilter inputFilter = new InputFilter() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.10
            @Override // android.text.InputFilter
            public CharSequence filter(CharSequence charSequence, int i4, int i5, Spanned spanned, int i6, int i7) {
                new StringBuilder(i5 - i4);
                while (i4 < i5) {
                    int type = Character.getType(charSequence.charAt(i4));
                    if (type == 19 || type == 28) {
                        return "";
                    }
                    i4++;
                }
                return null;
            }
        };
        if (i != -1) {
            textInputEditText.setId(i);
        }
        if (i2 > 0) {
            textInputEditText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(i2), inputFilter});
        } else {
            textInputEditText.setFilters(new InputFilter[]{inputFilter});
        }
        if (i3 != -1) {
            textInputEditText.setInputType(i3);
        }
        if (str != null) {
            textInputEditText.setHint(str);
        }
        textInputLayout.addView(textInputEditText);
        return textInputLayout;
    }

    public static ListView getListView(Context context, List<String> list, AdapterView.OnItemClickListener onItemClickListener, int i) {
        ArrayAdapter arrayAdapter;
        ListView listView = new ListView(context);
        listView.setChoiceMode(1);
        listView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            arrayAdapter = new ArrayAdapter(context, i, R.id.lists_text, list);
        } else {
            arrayAdapter = new ArrayAdapter(context, R.layout.listview_row, R.id.lists_text, list);
        }
        arrayAdapter.notifyDataSetChanged();
        listView.setAdapter((ListAdapter) arrayAdapter);
        listView.setOnItemClickListener(onItemClickListener);
        listView.setNestedScrollingEnabled(true);
        return listView;
    }

    public static ListView getListView(Context context, BaseAdapter baseAdapter, AdapterView.OnItemClickListener onItemClickListener) {
        ListView listView = new ListView(context);
        listView.setAdapter((ListAdapter) baseAdapter);
        listView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        baseAdapter.notifyDataSetChanged();
        listView.setNestedScrollingEnabled(true);
        listView.setOnItemClickListener(onItemClickListener);
        return listView;
    }

    public static PagingListView getPaginatedListViewWithItem(Context context, List<ListItemDataBean> list, int i, AdapterView.OnItemClickListener onItemClickListener, PagingListView.PagingListener pagingListener) {
        PagingAdapter pagingAdapter = new PagingAdapter(context, i, list, onItemClickListener);
        PagingListView pagingListView = new PagingListView(context);
        pagingListView.setChoiceMode(1);
        pagingListView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pagingListView.setNestedScrollingEnabled(true);
        pagingListView.setAdapter((ListAdapter) pagingAdapter);
        pagingListView.onFinishLoadingWithItem(true, list);
        pagingListView.setOnItemClickListener(onItemClickListener);
        if (pagingListener != null) {
            pagingListView.setHasMoreItems(true);
            pagingListView.setPagingListener(pagingListener);
        } else {
            pagingListView.setHasMoreItems(false);
        }
        if (i == R.layout.listview_row_notification || i == R.layout.listview_row_type) {
            pagingListView.setDivider(null);
        }
        return pagingListView;
    }

    public static PagingListView getMultiSelectPaginatedListViewWithItem(Context context, List<ListItemDataBean> list, int i, AdapterView.OnItemClickListener onItemClickListener, PagingListView.PagingListener pagingListener) {
        PagingAdapter pagingAdapter = new PagingAdapter(context, i, list, onItemClickListener);
        PagingListView pagingListView = new PagingListView(context);
        pagingListView.setChoiceMode(2);
        pagingListView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pagingListView.setNestedScrollingEnabled(true);
        pagingListView.setAdapter((ListAdapter) pagingAdapter);
        pagingListView.onFinishLoadingWithItem(true, list);
        pagingListView.setOnItemClickListener(onItemClickListener);
        if (pagingListener != null) {
            pagingListView.setHasMoreItems(true);
            pagingListView.setPagingListener(pagingListener);
        } else {
            pagingListView.setHasMoreItems(false);
        }
        if (i == R.layout.listview_row_notification || i == R.layout.listview_row_type) {
            pagingListView.setDivider(null);
        }
        return pagingListView;
    }

    public static PagingListView getPaginatedListViewWithItemForIncentive(Context context, final List<ListItemDataBean> list, int i, AdapterView.OnItemClickListener onItemClickListener, final PagingListView.PagingListener pagingListener) {
        final PagingAdapter pagingAdapter = new PagingAdapter(context, i, list, onItemClickListener);
        final PagingListView pagingListView = new PagingListView(context);
        pagingListView.setChoiceMode(1);
        pagingListView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        pagingListView.setNestedScrollingEnabled(true);
        pagingListView.setAdapter((ListAdapter) pagingAdapter);
        pagingListView.onFinishLoadingWithItem(true, list);
        pagingListView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.11
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j) {
                pagingListener.performActionOnClick(i2, list);
                pagingAdapter.notifyDataSetChanged();
                pagingListView.invalidateViews();
            }
        });
        if (pagingListener != null) {
            pagingListView.setHasMoreItems(true);
            pagingListView.setPagingListener(pagingListener);
        } else {
            pagingListView.setHasMoreItems(false);
        }
        if (i == R.layout.listview_row_notification || i == R.layout.listview_row_type) {
            pagingListView.setDivider(null);
        }
        return pagingListView;
    }

    public static MaterialButton getButton(Context context, String str, int i, LinearLayout.LayoutParams layoutParams) {
        MaterialButton materialButton = new MaterialButton(context);
        if (str != null && str.length() != 0) {
            materialButton.setText(UtilBean.getMyLabel(str));
        }
        if (i != -1) {
            materialButton.setId(i);
        }
        if (layoutParams != null) {
            materialButton.setLayoutParams(layoutParams);
        }
        materialButton.setTextColor(-1);
        materialButton.setTextSize(18.0f);
        materialButton.setMinHeight(150);
        return materialButton;
    }

    public static MaterialButton getCustomButton(Context context, String str, int i, LinearLayout.LayoutParams layoutParams) {
        MaterialButton button = getButton(context, str, i, layoutParams);
        button.setMinHeight(20);
        button.setTextSize(14.0f);
        return button;
    }

    public static LinearLayout getLinearLayout(Context context, int i, int i2, LinearLayout.LayoutParams layoutParams) {
        LinearLayout linearLayout = new LinearLayout(context);
        if (i != -1) {
            linearLayout.setId(i);
        }
        if (i2 != -1) {
            linearLayout.setOrientation(i2);
        }
        if (layoutParams != null) {
            linearLayout.setLayoutParams(layoutParams);
        }
        return linearLayout;
    }

    public static CardView getCardView(Context context, int i, int i2, LinearLayout.LayoutParams layoutParams) {
        CardView cardView = new CardView(context);
        cardView.setRadius(i2);
        layoutParams.setMargins(10, 16, 10, 16);
        cardView.setMaxCardElevation(30.0f);
        cardView.setCardElevation(20.0f);
        cardView.setBackgroundColor(-1);
        cardView.setContentPadding(20, 15, 20, 15);
        if (i != -1) {
            cardView.setId(i);
        }
        if (layoutParams != null) {
            cardView.setLayoutParams(layoutParams);
        }
        return cardView;
    }

    public static LinearLayout getDetailsLayout(Context context, int i, int i2, int i3) {
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int i4 = i3 * (-1);
        layoutParams.setMargins(i4, i4, i4, 30);
        LinearLayout linearLayout = getLinearLayout(context, i, i2, layoutParams);
        linearLayout.setPadding(20, 0, 20, 20);
        linearLayout.setBackground(ContextCompat.getDrawable(context, R.drawable.details_border));
        return linearLayout;
    }

    public static RadioGroup getRadioGroup(Context context, Map<Integer, String> map, boolean z) {
        RadioGroup radioGroup = new RadioGroup(context);
        for (Map.Entry<Integer, String> entry : map.entrySet()) {
            radioGroup.addView(getRadioButton(context, UtilBean.getMyLabel(entry.getValue()), entry.getKey().intValue()));
        }
        return radioGroup;
    }

    public static MaterialRadioButton getRadioButton(Context context, String str, int i) {
        MaterialRadioButton materialRadioButton = new MaterialRadioButton(context);
        if (str != null) {
            materialRadioButton.setText(UtilBean.getMyLabel(str));
        }
        if (i != -1) {
            materialRadioButton.setId(i);
        }
        materialRadioButton.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return materialRadioButton;
    }

    public static MaterialCheckBox getCheckBox(Context context, String str, int i, boolean z) {
        MaterialCheckBox materialCheckBox = new MaterialCheckBox(context);
        if (str != null) {
            materialCheckBox.setText(UtilBean.getMyLabel(str));
        }
        if (i != -1) {
            materialCheckBox.setId(i);
        }
        materialCheckBox.setChecked(z);
        materialCheckBox.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        return materialCheckBox;
    }

    public static ImageView getImageView(Context context, int i, int i2, LinearLayout.LayoutParams layoutParams) {
        ImageView imageView = new ImageView(context);
        if (i2 != -1) {
            imageView.setImageResource(i2);
        }
        if (i != -1) {
            imageView.setId(i);
        }
        if (layoutParams != null) {
            imageView.setLayoutParams(layoutParams);
        }
        return imageView;
    }

    public static LinearLayout getCustomDatePickerForStatic(Context context, View.OnClickListener onClickListener, int i) {
        LinearLayout linearLayout = getLinearLayout(context, i, 0, null);
        linearLayout.setGravity(16);
        MaterialTextView materialTextViewGenerateAnswerView = generateAnswerView(context, "Select date");
        if (materialTextViewGenerateAnswerView != null) {
            materialTextViewGenerateAnswerView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 200.0f));
            materialTextViewGenerateAnswerView.setId(IdConstants.DATE_PICKER_TEXT_DATE_ID);
            linearLayout.addView(materialTextViewGenerateAnswerView);
        }
        ImageView imageView = getImageView(context, 2, R.drawable.ic_calender, null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.setMargins(0, 10, 0, 10);
        imageView.setLayoutParams(layoutParams);
        linearLayout.addView(imageView);
        if (SewaUtil.CURRENT_THEME == R.style.techo_training_app) {
            linearLayout.setBackground(ContextCompat.getDrawable(context, R.drawable.training_custom_datepicker));
        } else {
            linearLayout.setBackground(ContextCompat.getDrawable(context, R.drawable.custom_datepicker));
        }
        linearLayout.setOnClickListener(onClickListener);
        linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        ((RelativeLayout.LayoutParams) linearLayout.getLayoutParams()).setMargins(0, 0, 0, 50);
        return linearLayout;
    }

    public static Spinner getSpinner(Context context, String[] strArr, int i, int i2) {
        Spinner spinner = new Spinner(context);
        spinner.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        if (strArr != null) {
            MyArrayAdapter myArrayAdapter = new MyArrayAdapter(context, R.layout.spinner_item_top, strArr);
            myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
            spinner.setAdapter((SpinnerAdapter) myArrayAdapter);
            spinner.setSelection(i);
        }
        if (i2 != -1) {
            spinner.setId(i2);
        }
        ((RelativeLayout.LayoutParams) spinner.getLayoutParams()).setMargins(0, -20, 0, 50);
        return spinner;
    }

    public static Spinner getSpinnerWrapped(Context context, String[] strArr, int i, int i2) {
        Spinner spinner = new Spinner(context);
        spinner.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        if (strArr != null) {
            MyArrayAdapter myArrayAdapter = new MyArrayAdapter(context, R.layout.spinner_item_top, strArr);
            myArrayAdapter.setDropDownViewResource(R.layout.spinner_item_dropdown);
            spinner.setAdapter((SpinnerAdapter) myArrayAdapter);
            spinner.setSelection(i);
        }
        if (i2 != -1) {
            spinner.setId(i2);
        }
        ((RelativeLayout.LayoutParams) spinner.getLayoutParams()).setMargins(0, -20, 0, 50);
        return spinner;
    }

    public static MaterialButtonToggleGroup getYesNoToggleButton(Context context) {
        MaterialButtonToggleGroup materialButtonToggleGroup = new MaterialButtonToggleGroup(context);
        materialButtonToggleGroup.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        MaterialButton customButton = getCustomButton(context, "Yes", IdConstants.RADIO_BUTTON_ID_YES, new LinearLayout.LayoutParams(-2, -2));
        customButton.setBackgroundTintList(ContextCompat.getColorStateList(context, R.color.yes_toggle_button_selector));
        customButton.setTextColor(ContextCompat.getColorStateList(context, R.color.toggle_button_text_color_selector));
        customButton.setStrokeColor(ColorStateList.valueOf(ContextCompat.getColor(context, R.color.colorPrimary)));
        customButton.setStrokeWidth(2);
        materialButtonToggleGroup.addView(customButton);
        MaterialButton customButton2 = getCustomButton(context, "No", IdConstants.RADIO_BUTTON_ID_NO, new LinearLayout.LayoutParams(-2, -2));
        customButton2.setBackgroundTintList(ContextCompat.getColorStateList(context, R.color.no_toggle_button_selector));
        customButton2.setTextColor(ContextCompat.getColorStateList(context, R.color.toggle_button_text_color_selector));
        customButton2.setStrokeColor(ColorStateList.valueOf(ContextCompat.getColor(context, R.color.colorPrimary)));
        customButton2.setStrokeWidth(2);
        materialButtonToggleGroup.addView(customButton2);
        materialButtonToggleGroup.addOnButtonCheckedListener(new MaterialButtonToggleGroup.OnButtonCheckedListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.12
            @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
            public void onButtonChecked(MaterialButtonToggleGroup materialButtonToggleGroup2, int i, boolean z) {
                MaterialButton materialButton = (MaterialButton) materialButtonToggleGroup2.getChildAt(i - 10002);
                MaterialButton materialButton2 = (MaterialButton) materialButtonToggleGroup2.getChildAt(0);
                MaterialButton materialButton3 = (MaterialButton) materialButtonToggleGroup2.getChildAt(1);
                materialButton2.setSelected(false);
                materialButton3.setSelected(false);
                materialButton.setSelected(true);
            }
        });
        return materialButtonToggleGroup;
    }

    public static ListView getButtonList(Context context, List<String> list, AdapterView.OnItemClickListener onItemClickListener) {
        MyExpandedListView myExpandedListView = new MyExpandedListView(context);
        myExpandedListView.setExpanded(true);
        myExpandedListView.setChoiceMode(1);
        myExpandedListView.setNestedScrollingEnabled(true);
        myExpandedListView.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.button_listview_row, R.id.lists_button, list);
        arrayAdapter.notifyDataSetChanged();
        myExpandedListView.setAdapter((ListAdapter) arrayAdapter);
        myExpandedListView.setDivider(null);
        myExpandedListView.setOnItemClickListener(onItemClickListener);
        return myExpandedListView;
    }

    public static View getSeparator(Context context) {
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, 1));
        view.setBackgroundColor(ContextCompat.getColor(context, R.color.listSeparatorBackground));
        return view;
    }

    public static MaterialTextView getOrTextView(Context context) {
        MaterialTextView materialTextView = new MaterialTextView(context);
        materialTextView.setText(LabelConstants.OR);
        materialTextView.setPadding(0, 20, 0, 0);
        materialTextView.setTextAppearance(context, R.style.OrTextView);
        materialTextView.setTextAlignment(4);
        return materialTextView;
    }

    public static LinearLayout getAgeBox(Context context, int i, View.OnFocusChangeListener onFocusChangeListener) {
        LinearLayout linearLayout = getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        LinearLayout linearLayout2 = getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        TextInputLayout editText = getEditText(context, GlobalTypes.YEAR, IdConstants.AGE_BOX_YEAR_EDIT_TEXT_ID, 2, 2);
        editText.setOnFocusChangeListener(onFocusChangeListener);
        linearLayout2.addView(editText, new LinearLayout.LayoutParams(0, -2, 9.0f));
        linearLayout2.addView(getMaterialTextView(context, GlobalTypes.YEAR, -1, R.style.CustomAnswerView, false), new LinearLayout.LayoutParams(0, -2, 2.0f));
        linearLayout.addView(linearLayout2);
        LinearLayout linearLayout3 = getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        TextInputLayout editText2 = getEditText(context, "Month", IdConstants.AGE_BOX_MONTH_EDIT_TEXT_ID, 2, 2);
        editText2.setOnFocusChangeListener(onFocusChangeListener);
        linearLayout3.addView(editText2, new LinearLayout.LayoutParams(0, -2, 9.0f));
        linearLayout3.addView(getMaterialTextView(context, "Month", -1, R.style.CustomAnswerView, false), new LinearLayout.LayoutParams(0, -2, 2.0f));
        linearLayout.addView(linearLayout3);
        LinearLayout linearLayout4 = getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        TextInputLayout editText3 = getEditText(context, GlobalTypes.DAY, IdConstants.AGE_BOX_DAY_EDIT_TEXT_ID, 2, 2);
        editText3.setOnFocusChangeListener(onFocusChangeListener);
        linearLayout4.addView(editText3, new LinearLayout.LayoutParams(0, -2, 9.0f));
        linearLayout4.addView(getMaterialTextView(context, GlobalTypes.DAY, -1, R.style.CustomAnswerView, false), new LinearLayout.LayoutParams(0, -2, 2.0f));
        linearLayout.addView(linearLayout4);
        if (i != -1) {
            linearLayout.setId(i);
        }
        return linearLayout;
    }

    public static NestedScrollView getScrollView(Context context, int i, LinearLayout.LayoutParams layoutParams) {
        NestedScrollView scrollView = getScrollView(context);
        if (i != -1) {
            scrollView.setId(i);
        }
        if (layoutParams != null) {
            scrollView.setLayoutParams(layoutParams);
        }
        return scrollView;
    }

    public static NestedScrollView getScrollView(Context context) {
        return new NestedScrollView(context);
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.argusoft.sewa.android.app.component.MyStaticComponents$13] */
    public static LinearLayout getVideoShow(Context context, String str, int i) {
        LinearLayout linearLayout = getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            linearLayout.setId(i);
        }
        ImageView imageView = getImageView(context, 1, R.drawable.play_video, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.13
            private Context context;
            private String dataMap;

            public View.OnClickListener setContext(Context context2, String str2) {
                this.context = context2;
                this.dataMap = str2;
                return this;
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.argusoft.sewa.android.app.component.MyStaticComponents$13$1] */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    final MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.PLEASE_WAIT);
                    myProcessDialog.show();
                    new Thread() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.13.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            Intent intent = new Intent(AnonymousClass13.this.context, (Class<?>) CustomVideoPlayerActivity.class);
                            if (AnonymousClass13.this.dataMap != null) {
                                intent.putExtra(GlobalTypes.DATA_MAP, AnonymousClass13.this.dataMap);
                            }
                            AnonymousClass13.this.context.startActivity(intent);
                            myProcessDialog.dismiss();
                        }
                    }.start();
                } catch (Exception e) {
                    SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_SHOW_VIDEO);
                }
            }
        }.setContext(context, str));
        return linearLayout;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.argusoft.sewa.android.app.component.MyStaticComponents$14] */
    public static LinearLayout getMandatoryVideoShow(Context context, String str, int i, Integer num) {
        LinearLayout linearLayout = getLinearLayout(context, -1, 1, new LinearLayout.LayoutParams(-1, -2));
        if (i != -1) {
            linearLayout.setId(i);
        }
        ImageView imageView = getImageView(context, 1, R.drawable.play_video, new LinearLayout.LayoutParams(-1, -1));
        linearLayout.addView(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.14
            private Context context;
            private String dataMap;
            private Integer questionId;

            public View.OnClickListener setContext(Context context2, String str2, Integer num2) {
                this.context = context2;
                this.dataMap = str2;
                this.questionId = num2;
                return this;
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.argusoft.sewa.android.app.component.MyStaticComponents$14$1] */
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    final MyProcessDialog myProcessDialog = new MyProcessDialog(this.context, GlobalTypes.PLEASE_WAIT);
                    myProcessDialog.show();
                    new Thread() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.14.1
                        @Override // java.lang.Thread, java.lang.Runnable
                        public void run() {
                            Intent intent = new Intent(AnonymousClass14.this.context, (Class<?>) CustomMandatoryVideoPlayerActivity.class);
                            if (AnonymousClass14.this.dataMap != null) {
                                intent.putExtra(GlobalTypes.DATA_MAP, AnonymousClass14.this.dataMap);
                            }
                            intent.putExtra("questionId", AnonymousClass14.this.questionId);
                            AnonymousClass14.this.context.startActivity(intent);
                            myProcessDialog.dismiss();
                        }
                    }.start();
                } catch (Exception e) {
                    SharedStructureData.sewaService.storeException(e, GlobalTypes.EXCEPTION_TYPE_SHOW_VIDEO);
                }
            }
        }.setContext(context, str, num));
        return linearLayout;
    }

    /* JADX WARN: Type inference failed for: r7v3, types: [com.argusoft.sewa.android.app.component.MyStaticComponents$15] */
    public static LinearLayout getCallView(Context context, String str, int i, int i2) {
        LinearLayout linearLayout = getLinearLayout(context, -1, 0, new LinearLayout.LayoutParams(-1, -2));
        if (i2 > 0) {
            linearLayout.setGravity(i2);
        }
        if (i != -1) {
            linearLayout.setId(i);
        }
        MaterialTextView materialTextView = new MaterialTextView(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.setMargins(0, 0, 10, 10);
        materialTextView.setTextAppearance(context, R.style.CustomAnswerView);
        materialTextView.setText(UtilBean.getMyLabel(str));
        materialTextView.setPadding(0, 15, 0, 15);
        materialTextView.setLayoutParams(layoutParams);
        linearLayout.addView(materialTextView);
        ImageView imageView = getImageView(context, 1, R.drawable.call, new LinearLayout.LayoutParams(80, 80));
        linearLayout.addView(imageView);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.argusoft.sewa.android.app.component.MyStaticComponents.15
            private Context context;
            private String phoneNo;

            public View.OnClickListener setContext(Context context2, String str2) {
                this.context = context2;
                this.phoneNo = str2;
                return this;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    this.context.startActivity(new Intent("android.intent.action.CALL", Uri.parse("tel:" + this.phoneNo)));
                } catch (Exception e) {
                    Log.i(MyStaticComponents.TAG, "Call not done number is not valid");
                    Log.e(getClass().getSimpleName(), null, e);
                    Context context2 = this.context;
                    if (context2 != null) {
                        SewaUtil.generateToast(context2, LabelConstants.CALL_NOT_DONE_DUE_TO_INVALID_PHONE_NUMBER);
                    }
                }
            }
        }.setContext(context, str));
        return linearLayout;
    }

    public static RadioGroup getRadioGroup(Context context, RadioGroup.OnCheckedChangeListener onCheckedChangeListener, List<String> list, int i, int i2, int i3) {
        RadioGroup radioGroup = new RadioGroup(context);
        if (onCheckedChangeListener != null) {
            radioGroup.setOnCheckedChangeListener(onCheckedChangeListener);
        }
        if (i2 > 0) {
            radioGroup.setId(i2);
        }
        if (list != null && !list.isEmpty()) {
            Iterator<String> it = list.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                radioGroup.addView(getRadioButton(context, UtilBean.getMyLabel(it.next()), i4));
                i4++;
            }
            if (i != -1) {
                ((RadioButton) radioGroup.getChildAt(i)).setChecked(true);
            }
        }
        if (i3 != -1) {
            radioGroup.setOrientation(i3);
        }
        return radioGroup;
    }

    public static Drawable getImageDrawable(Context context, Long l, String str) {
        if (l == null) {
            return null;
        }
        String str2 = SewaConstants.DIR_LMS + UtilBean.getLMSFileName(l, str);
        if (!UtilBean.isFileExists(str2)) {
            return null;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((Activity) context).getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        return new BitmapDrawable(context.getResources(), Bitmap.createScaledBitmap(BitmapFactory.decodeFile(str2), displayMetrics.widthPixels / 4, displayMetrics.widthPixels / 4, true));
    }

    public static View getHorizontalSpaceSeparator(Context context, int i) {
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams(i, -1));
        return view;
    }

    public static View getVerticalSpaceSeparator(Context context, int i) {
        View view = new View(context);
        view.setLayoutParams(new LinearLayout.LayoutParams(-1, i));
        return view;
    }

    public static MaterialTextView getWhiteBackgroundButtonView(Context context, String str) {
        MaterialTextView materialTextViewGenerateAnswerView = generateAnswerView(context, str);
        materialTextViewGenerateAnswerView.setTextColor(ContextCompat.getColor(context, R.color.colorPrimary));
        materialTextViewGenerateAnswerView.setBackground(ContextCompat.getDrawable(context, R.drawable.unselected_listview_button));
        materialTextViewGenerateAnswerView.setGravity(17);
        materialTextViewGenerateAnswerView.setTypeface(null, 1);
        materialTextViewGenerateAnswerView.setMinHeight(170);
        return materialTextViewGenerateAnswerView;
    }

    public static AutoCompleteTextView getAutoCompleteTextView(Context context, List<String> list, AdapterView.OnItemClickListener onItemClickListener) {
        AutoCompleteTextView autoCompleteTextView = new AutoCompleteTextView(context);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, R.layout.select_dialog_item, list);
        autoCompleteTextView.setThreshold(1);
        autoCompleteTextView.setAdapter(arrayAdapter);
        autoCompleteTextView.setOnItemClickListener(onItemClickListener);
        return autoCompleteTextView;
    }

    public static LinearLayout getTitleWithCountView(Context context, String str, Integer num) {
        if (str == null) {
            return null;
        }
        if (num == null) {
            num = 0;
        }
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(context).inflate(R.layout.text_title_with_count_layout, (ViewGroup) null);
        MaterialTextView materialTextView = (MaterialTextView) linearLayout.findViewById(R.id.title);
        materialTextView.setText(UtilBean.getMyLabel(str));
        materialTextView.setPadding(20, 20, 0, 20);
        ((MaterialTextView) linearLayout.findViewById(R.id.due_title)).setText(UtilBean.getMyLabel("(Due count -"));
        ((MaterialTextView) linearLayout.findViewById(R.id.count)).setText(num.toString());
        return linearLayout;
    }
}

package com.argusoft.sewa.android.app.component;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import com.argusoft.sewa.android.app.R;
import com.argusoft.sewa.android.app.constants.LabelConstants;
import com.argusoft.sewa.android.app.databean.ListItemDataBean;
import com.argusoft.sewa.android.app.util.UtilBean;
import com.google.android.material.textview.MaterialTextView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class PagingAdapter<T> extends ArrayAdapter<T> {
    private MaterialTextView boldTextView;
    private MaterialTextView boldTextView2;
    private MaterialTextView boldTextView3;
    private MaterialTextView bookmarkDuration;
    private MaterialTextView bookmarkName;
    private MaterialTextView bookmarkNote;
    private MaterialTextView dateTextView;
    private ListItemDataBean item;
    private List<T> items;
    private LinearLayout linearLayout;
    private int listItemResourceId;
    private AdapterView.OnItemClickListener onItemClickListener;
    private MaterialTextView regularTextView;
    private MaterialTextView regularTextView2;
    private MaterialTextView regularTextView3;
    private TextView uniqueHealthIdAndMemberName;
    private MaterialTextView vaccines;
    private MaterialTextView vaccinesTitle;
    private MaterialTextView visitTextView;

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    public PagingAdapter(Context context, int i, List<T> list, AdapterView.OnItemClickListener onItemClickListener) {
        super(context, i, list);
        this.items = new ArrayList();
        this.listItemResourceId = i;
        this.onItemClickListener = onItemClickListener;
    }

    public void addMoreItems(List<T> list) {
        this.items.addAll(list);
        notifyDataSetChanged();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.items.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public T getItem(int i) {
        return this.items.get(i);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int i) {
        return this.onItemClickListener != null;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view != null) {
            this.linearLayout = (LinearLayout) view;
        } else {
            this.linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(this.listItemResourceId, (ViewGroup) null);
        }
        if (this.listItemResourceId == R.layout.listview_row_type) {
            this.item = (ListItemDataBean) this.items.get(i);
            ((MaterialTextView) this.linearLayout.findViewById(R.id.lists_text)).setText(UtilBean.getMyLabel(this.item.getText()));
        } else if (this.listItemResourceId == R.layout.listview_row_with_item) {
            this.item = (ListItemDataBean) this.items.get(i);
            setBoldAndRegularText(R.id.list_text_bold, R.id.list_text_regular, R.id.list_text_separator);
        } else if (this.listItemResourceId == R.layout.listview_row_notification) {
            this.item = (ListItemDataBean) this.items.get(i);
            setNotificationRow();
        } else if (this.listItemResourceId == R.layout.listview_row_with_date) {
            this.item = (ListItemDataBean) this.items.get(i);
            setBoldAndRegularText(R.id.notification_text_bold, R.id.notification_text_regular, R.id.notification_text_separator);
            setDateAndVisit(R.id.notification_text_date, R.id.notification_text_visit);
            setVaccines(R.id.notification_text_vaccines_title, R.id.notification_text_vaccines);
            if (this.item.isTaskOverDue()) {
                setTaskOverDueRow(R.drawable.notification_due_selector, R.color.notificationBadgeBackground, R.color.notificationBadgeBackground);
            } else {
                setTaskOverDueRow(R.drawable.listview_selector, R.color.colorAccent, R.color.listview_text_color_selector);
            }
        } else if (this.listItemResourceId == R.layout.listview_row_with_date_and_info) {
            this.item = (ListItemDataBean) this.items.get(i);
            setBoldAndRegularText(R.id.notification_text_bold_01, R.id.notification_text_regular_01, R.id.notification_text_separator_01);
            setBoldAndRegularText2(R.id.notification_text_bold_02, R.id.notification_text_regular_02, R.id.notification_text_separator_02);
            setBoldAndRegularText3(R.id.notification_text_bold_03, R.id.notification_text_regular_03, R.id.notification_text_separator_03);
            setDateAndVisit(R.id.notification_text_date, R.id.notification_text_visit);
            setVaccines(R.id.notification_text_vaccines_title, R.id.notification_text_vaccines);
            if (this.item.isTaskOverDue()) {
                setTaskOverDueRowWithInfo(R.drawable.notification_due_selector, R.color.notificationBadgeBackground, R.color.notificationBadgeBackground);
            } else {
                setTaskOverDueRowWithInfo(R.drawable.listview_selector, R.color.colorAccent, R.color.listview_text_color_selector);
            }
        } else if (this.listItemResourceId == R.layout.listview_row_with_info) {
            this.item = (ListItemDataBean) this.items.get(i);
            setInfoListView();
            setBoldAndRegularText(R.id.list_info_text_bold, R.id.list_info_text_regular, R.id.list_info_text_separator);
        } else if (this.listItemResourceId == R.layout.listview_row_with_two_item) {
            this.item = (ListItemDataBean) this.items.get(i);
            setListViewRows();
        } else if (this.listItemResourceId == R.layout.listview_row_with_two_item_npcb) {
            this.item = (ListItemDataBean) this.items.get(i);
            setListViewRowsNPCB();
        } else if (this.listItemResourceId == R.layout.listview_row_with_three_item) {
            this.item = (ListItemDataBean) this.items.get(i);
            setListView3Rows();
        } else if (this.listItemResourceId == R.layout.listview_row_with_three_item_npcb) {
            this.item = (ListItemDataBean) this.items.get(i);
            setListViewRowsNPCBOnsiteMapping();
        } else if (this.listItemResourceId == R.layout.listview_row_bookmark) {
            this.item = (ListItemDataBean) this.items.get(i);
            setBookmarkRows();
        } else if (this.listItemResourceId == R.layout.listview_row_abha_number) {
            this.item = (ListItemDataBean) this.items.get(i);
            setAbhaListViewRows();
        } else if (this.listItemResourceId == R.layout.list_view_item_with_checkbox) {
            this.item = (ListItemDataBean) this.items.get(i);
            TextView textView = (TextView) this.linearLayout.findViewById(R.id.nameAndUniqueHealthId);
            this.uniqueHealthIdAndMemberName = textView;
            textView.setText(this.item.getText());
            if (Boolean.TRUE.equals(Boolean.valueOf(this.item.isVerified()))) {
                this.uniqueHealthIdAndMemberName.setCompoundDrawablesWithIntrinsicBounds(R.drawable.checkmark, 0, 0, 0);
            } else {
                this.uniqueHealthIdAndMemberName.setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            }
        } else if (this.listItemResourceId == R.layout.listview_row_with_due_vaccine) {
            this.item = (ListItemDataBean) this.items.get(i);
            setBoldAndRegularText(R.id.notification_text_bold, R.id.notification_text_regular, R.id.notification_text_separator);
            setVaccines(R.id.notification_text_vaccines_title, R.id.notification_text_vaccines);
        } else if (this.listItemResourceId == R.layout.custom_button_list) {
            this.item = (ListItemDataBean) this.items.get(i);
            setSessionButtonWithBadge(R.id.lists_button, R.id.activeSessionBadge, R.id.session_date, R.id.session_location);
        } else {
            ((MaterialTextView) this.linearLayout.findViewById(R.id.lists_text)).setText(UtilBean.getMyLabel((String) this.items.get(i)));
        }
        return this.linearLayout;
    }

    private void setTaskOverDueRow(int i, int i2, int i3) {
        this.linearLayout.setBackgroundResource(i);
        this.visitTextView.getBackground().setColorFilter(ContextCompat.getColor(getContext(), i2), PorterDuff.Mode.SRC_ATOP);
        this.boldTextView.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.regularTextView.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.dateTextView.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.vaccinesTitle.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.vaccines.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        ((MaterialTextView) this.linearLayout.findViewById(R.id.notification_text_separator)).setTextColor(ContextCompat.getColorStateList(getContext(), i3));
    }

    private void setTaskOverDueRowWithInfo(int i, int i2, int i3) {
        this.linearLayout.setBackgroundResource(i);
        this.visitTextView.getBackground().setColorFilter(ContextCompat.getColor(getContext(), i2), PorterDuff.Mode.SRC_ATOP);
        this.boldTextView.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.regularTextView.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.boldTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.regularTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.boldTextView3.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.regularTextView3.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.dateTextView.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.vaccinesTitle.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        this.vaccines.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(R.id.notification_text_separator_01);
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(R.id.notification_text_separator_02);
        MaterialTextView materialTextView3 = (MaterialTextView) this.linearLayout.findViewById(R.id.notification_text_separator_03);
        materialTextView.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        materialTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
        materialTextView3.setTextColor(ContextCompat.getColorStateList(getContext(), i3));
    }

    private void setBoldAndRegularText(int i, int i2, int i3) {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(i);
        this.boldTextView = materialTextView;
        materialTextView.setText(this.item.getBoldText());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(i2);
        this.regularTextView = materialTextView2;
        materialTextView2.setText(this.item.getRegularText());
        if (this.item.isVerified()) {
            this.boldTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            this.regularTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
        } else {
            this.boldTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            this.regularTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        }
        if (this.item.getBoldText() == null || this.item.getRegularText() == null) {
            this.linearLayout.findViewById(i3).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i3).setVisibility(0);
        }
        if (this.item.getBoldText() == null) {
            this.linearLayout.findViewById(i).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i).setVisibility(0);
        }
        if (this.item.getRegularText() == null) {
            this.linearLayout.findViewById(i2).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i2).setVisibility(0);
        }
    }

    private void setBoldAndRegularText2(int i, int i2, int i3) {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(i);
        this.boldTextView2 = materialTextView;
        materialTextView.setText(this.item.getBoldText2());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(i2);
        this.regularTextView2 = materialTextView2;
        materialTextView2.setText(this.item.getRegularText2());
        if (this.item.isVerified()) {
            this.boldTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            this.regularTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
        } else {
            this.boldTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            this.regularTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        }
        if (this.item.getBoldText2() == null || this.item.getRegularText2() == null) {
            this.linearLayout.findViewById(i3).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i3).setVisibility(0);
        }
        if (this.item.getBoldText2() == null) {
            this.linearLayout.findViewById(i).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i).setVisibility(0);
        }
        if (this.item.getRegularText2() == null) {
            this.linearLayout.findViewById(i2).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i2).setVisibility(0);
        }
    }

    private void setBoldAndRegularText3(int i, int i2, int i3) {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(i);
        this.boldTextView3 = materialTextView;
        materialTextView.setText(this.item.getBoldText3());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(i2);
        this.regularTextView3 = materialTextView2;
        materialTextView2.setText(this.item.getRegularText3());
        if (this.item.isVerified()) {
            this.boldTextView3.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            this.regularTextView3.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
        } else {
            this.boldTextView3.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            this.regularTextView3.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        }
        if (this.item.getBoldText3() == null || this.item.getRegularText3() == null) {
            this.linearLayout.findViewById(i3).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i3).setVisibility(0);
        }
        if (this.item.getBoldText3() == null) {
            this.linearLayout.findViewById(i).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i).setVisibility(0);
        }
        if (this.item.getRegularText3() == null) {
            this.linearLayout.findViewById(i2).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i2).setVisibility(0);
        }
    }

    private void setDateAndVisit(int i, int i2) {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(i);
        this.dateTextView = materialTextView;
        materialTextView.setText(this.item.getDate());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(i2);
        this.visitTextView = materialTextView2;
        materialTextView2.setText(this.item.getVisit());
        if (this.item.getDate() == null) {
            this.linearLayout.findViewById(R.id.notification_text_date).setVisibility(8);
        } else {
            this.linearLayout.findViewById(R.id.notification_text_date).setVisibility(0);
        }
        if (this.item.getVisit() == null) {
            this.linearLayout.findViewById(R.id.notification_text_visit).setVisibility(8);
        } else {
            this.linearLayout.findViewById(R.id.notification_text_visit).setVisibility(0);
        }
    }

    private void setVaccines(int i, int i2) {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(i2);
        this.vaccines = materialTextView;
        materialTextView.setText(this.item.getVaccines());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(i);
        this.vaccinesTitle = materialTextView2;
        materialTextView2.setText(this.item.getVaccinesTitle());
        if (this.item.getVaccines() != null) {
            this.linearLayout.findViewById(R.id.notification_text_vaccines_title).setVisibility(0);
            this.linearLayout.findViewById(R.id.notification_text_vaccines).setVisibility(0);
        } else {
            this.linearLayout.findViewById(R.id.notification_text_vaccines_title).setVisibility(8);
            this.linearLayout.findViewById(R.id.notification_text_vaccines).setVisibility(8);
        }
    }

    private void setInfoListView() {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(R.id.list_info_text);
        if (this.item.getInfo() != null) {
            materialTextView.setText(this.item.getInfo());
            this.linearLayout.findViewById(R.id.list_info_text).setVisibility(0);
        } else {
            this.linearLayout.findViewById(R.id.list_info_text).setVisibility(8);
        }
    }

    private void setListViewRows() {
        ((MaterialTextView) this.linearLayout.findViewById(R.id.list_text_title)).setText(this.item.getFamilyId());
        if (this.item.getFamilyId() == null) {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(8);
        } else {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(0);
        }
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_bold);
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_regular);
        if (this.item.getUserFullName() != null) {
            materialTextView.setText(this.item.getUserName());
            materialTextView2.setText(this.item.getUserFullName());
            if (this.item.getUserFullName() == null) {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(8);
            } else {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(0);
            }
        } else {
            materialTextView.setText(this.item.getMemberId());
            materialTextView2.setText(this.item.getMemberName());
            if (this.item.getMemberId() == null || this.item.getMemberName() == null) {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(8);
            } else {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(0);
            }
        }
        if (this.item.isVerified()) {
            materialTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            materialTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
        } else {
            materialTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            materialTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        }
        setBoldAndRegularText(R.id.list_second_text_bold, R.id.list_second_text_regular, R.id.list_second_text_separator);
    }

    private void setListViewRowsNPCB() {
        ((MaterialTextView) this.linearLayout.findViewById(R.id.list_text_title)).setText(this.item.getFamilyId());
        if (this.item.getFamilyId() == null) {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(8);
        } else {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(0);
        }
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_bold);
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_regular);
        if (this.item.getUserFullName() != null) {
            materialTextView.setText(this.item.getUserName());
            materialTextView2.setText(this.item.getUserFullName());
            if (this.item.getUserFullName() == null) {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(8);
            } else {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(0);
            }
        } else {
            materialTextView.setText(this.item.getMemberId());
            materialTextView2.setText(this.item.getMemberName());
            if (this.item.getMemberId() == null || this.item.getMemberName() == null) {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(8);
            } else {
                this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(0);
            }
        }
        if (this.item.isVerified()) {
            materialTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            materialTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
        } else {
            materialTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            materialTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        }
        setBoldAndRegularText(R.id.list_second_text_bold, R.id.list_second_text_regular, R.id.list_second_text_separator);
    }

    private void setNotificationRow() {
        ((MaterialTextView) this.linearLayout.findViewById(R.id.notification_text)).setText(this.item.getNotificationText());
        if (this.item.getNotificationCount() != null) {
            ((MaterialTextView) this.linearLayout.findViewById(R.id.notification_count)).setText(UtilBean.getMyLabel(this.item.getNotificationCount()));
            this.linearLayout.findViewById(R.id.notification_badge).setVisibility(0);
        } else {
            this.linearLayout.findViewById(R.id.notification_badge).setVisibility(4);
        }
    }

    private void setBookmarkRows() {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(R.id.bookmark_name);
        this.bookmarkName = materialTextView;
        materialTextView.setText(this.item.getBookmarkText());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(R.id.bookmark_duration);
        this.bookmarkDuration = materialTextView2;
        materialTextView2.setText((this.item.getPosition() / 1000) + " sec");
        MaterialTextView materialTextView3 = (MaterialTextView) this.linearLayout.findViewById(R.id.bookmark_note);
        this.bookmarkNote = materialTextView3;
        materialTextView3.setText(this.item.getBookmarkNote());
        if (this.item.isCrossRefBookmark()) {
            this.linearLayout.setBackgroundResource(R.drawable.notification_due_selector);
            this.bookmarkName.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.notificationBadgeBackground));
            this.bookmarkDuration.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.notificationBadgeBackground));
            this.bookmarkNote.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.notificationBadgeBackground));
            return;
        }
        this.linearLayout.setBackgroundResource(R.drawable.listview_selector);
        this.bookmarkName.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        this.bookmarkDuration.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        this.bookmarkNote.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
    }

    private void setAbhaListViewRows() {
        ((MaterialTextView) this.linearLayout.findViewById(R.id.list_text_title)).setText(this.item.getMemberId());
        if (this.item.getMemberId() == null) {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(8);
        } else {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(0);
        }
        ((MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_bold)).setText(this.item.getRegularText());
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(R.id.list_second_text_bold);
        materialTextView.setText(UtilBean.getMyLabel(LabelConstants.ABHA_NUMBER) + " : " + this.item.getHealthIdNumber());
        if (this.item.getHealthIdNumber() == null) {
            materialTextView.setVisibility(8);
        } else {
            materialTextView.setVisibility(0);
        }
        AppCompatImageView appCompatImageView = (AppCompatImageView) this.linearLayout.findViewById(R.id.abhaNumberImageView);
        if (this.item.isHealthId()) {
            appCompatImageView.setVisibility(0);
        } else {
            appCompatImageView.setVisibility(8);
        }
    }

    private void setBoldAnd2RegularText(int i, int i2, int i3, int i4) {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(i);
        this.boldTextView = materialTextView;
        materialTextView.setText(this.item.getBoldText());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(i2);
        this.regularTextView = materialTextView2;
        materialTextView2.setText(this.item.getRegularText());
        MaterialTextView materialTextView3 = (MaterialTextView) this.linearLayout.findViewById(i3);
        this.regularTextView2 = materialTextView3;
        materialTextView3.setText(UtilBean.getMyLabel(LabelConstants.PENDING_MEMBERS) + " : " + Integer.toString(this.item.getPendingAbhaCount()));
        if (this.item.isVerified()) {
            this.boldTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            this.regularTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            this.regularTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
        } else {
            this.boldTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            this.regularTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            this.regularTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        }
        if (this.item.getBoldText() == null || this.item.getRegularText() == null) {
            this.linearLayout.findViewById(i4).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i4).setVisibility(0);
        }
        if (this.item.getBoldText() == null) {
            this.linearLayout.findViewById(i).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i).setVisibility(0);
        }
        if (this.item.getRegularText() == null) {
            this.linearLayout.findViewById(i2).setVisibility(8);
        } else {
            this.linearLayout.findViewById(i2).setVisibility(0);
        }
    }

    private void setListView3Rows() {
        ((MaterialTextView) this.linearLayout.findViewById(R.id.list_text_title)).setText(this.item.getFamilyId());
        if (this.item.getFamilyId() == null) {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(8);
        } else {
            this.linearLayout.findViewById(R.id.list_text_title).setVisibility(0);
        }
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_bold);
        materialTextView.setText(this.item.getMemberId());
        MaterialTextView materialTextView2 = (MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_regular);
        materialTextView2.setText(this.item.getMemberName());
        if (this.item.getMemberId() == null || this.item.getMemberName() == null) {
            this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(8);
        } else {
            this.linearLayout.findViewById(R.id.list_first_text_separator).setVisibility(0);
        }
        if (this.item.isVerified()) {
            materialTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
            materialTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_verified_text_color_selector));
        } else {
            materialTextView2.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
            materialTextView.setTextColor(ContextCompat.getColorStateList(getContext(), R.color.listview_text_color_selector));
        }
        setBoldAnd2RegularText(R.id.list_second_text_bold, R.id.list_second_text_regular, R.id.list_third_text_regular, R.id.list_second_text_separator);
    }

    private void setListViewRowsNPCBOnsiteMapping() {
        ((MaterialTextView) this.linearLayout.findViewById(R.id.list_first_text_bold)).setText(this.item.getBoldText());
        this.boldTextView2 = (MaterialTextView) this.linearLayout.findViewById(R.id.list_second_text_bold);
        this.regularTextView2 = (MaterialTextView) this.linearLayout.findViewById(R.id.list_second_text_regular);
        this.boldTextView2.setText(this.item.getBoldText2());
        this.regularTextView2.setText(this.item.getRegularText2());
        this.boldTextView3 = (MaterialTextView) this.linearLayout.findViewById(R.id.list_third_text_bold);
        this.regularTextView3 = (MaterialTextView) this.linearLayout.findViewById(R.id.list_third_text_regular);
        this.boldTextView3.setText(this.item.getBoldText3());
        this.regularTextView3.setText(this.item.getRegularText3());
        ImageView[] imageViewArr = {(ImageView) this.linearLayout.findViewById(R.id.list_leading_icon), (ImageView) this.linearLayout.findViewById(R.id.list_leading_icon_2), (ImageView) this.linearLayout.findViewById(R.id.list_leading_icon_3)};
        List<Integer> leadingIconTintColors = this.item.getLeadingIconTintColors();
        if (leadingIconTintColors == null || leadingIconTintColors.isEmpty()) {
            if (this.item.getLeadingIconTintColor() != null) {
                leadingIconTintColors = Collections.singletonList(this.item.getLeadingIconTintColor());
            } else {
                leadingIconTintColors = Collections.emptyList();
            }
        }
        for (int i = 0; i < 3; i++) {
            if (i < leadingIconTintColors.size()) {
                List<Integer> leadingIconResIds = this.item.getLeadingIconResIds();
                if (leadingIconResIds != null && i < leadingIconResIds.size() && leadingIconResIds.get(i) != null) {
                    imageViewArr[i].setImageResource(leadingIconResIds.get(i).intValue());
                }
                imageViewArr[i].setImageTintList(ColorStateList.valueOf(leadingIconTintColors.get(i).intValue()));
                imageViewArr[i].setVisibility(0);
            } else {
                imageViewArr[i].setVisibility(8);
            }
        }
    }

    private void setSessionButtonWithBadge(int i, int i2, int i3, int i4) {
        MaterialTextView materialTextView = (MaterialTextView) this.linearLayout.findViewById(i);
        ImageView imageView = (ImageView) this.linearLayout.findViewById(i2);
        TextView textView = (TextView) this.linearLayout.findViewById(i3);
        TextView textView2 = (TextView) this.linearLayout.findViewById(i4);
        materialTextView.setText(this.item.getBoldText());
        textView.setText(this.item.getDate());
        textView2.setText(this.item.getInfo());
        if (this.item.isActive()) {
            imageView.setVisibility(0);
        } else {
            imageView.setVisibility(8);
        }
    }
}

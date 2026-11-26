.class public final synthetic Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

.field public final synthetic f$1:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

.field public final synthetic f$2:Lcom/google/android/material/textview/MaterialTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;->f$0:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;->f$1:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;->f$2:Lcom/google/android/material/textview/MaterialTextView;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;->f$0:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;->f$1:Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda6;->f$2:Lcom/google/android/material/textview/MaterialTextView;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->lambda$setRoutineIncentiveScreen$7(Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Lcom/argusoft/sewa/android/app/databean/IncentiveDetailDataBean;Lcom/google/android/material/textview/MaterialTextView;Landroid/widget/RadioGroup;I)V

    return-void
.end method

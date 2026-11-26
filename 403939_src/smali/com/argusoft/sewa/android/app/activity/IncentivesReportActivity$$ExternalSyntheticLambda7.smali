.class public final synthetic Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/google/android/material/textview/MaterialTextView;

.field public final synthetic f$1:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/material/textview/MaterialTextView;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda7;->f$1:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda7;->f$0:Lcom/google/android/material/textview/MaterialTextView;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity$$ExternalSyntheticLambda7;->f$1:Lcom/argusoft/sewa/android/app/model/IncentiveMaster;

    invoke-static {v0, v1, p1, p2}, Lcom/argusoft/sewa/android/app/activity/IncentivesReportActivity;->lambda$getRadioGroupCheckChangeListener$8(Lcom/google/android/material/textview/MaterialTextView;Lcom/argusoft/sewa/android/app/model/IncentiveMaster;Landroid/widget/RadioGroup;I)V

    return-void
.end method

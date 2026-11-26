.class Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$4;
.super Ljava/lang/Object;
.source "NDHMHealthIdManagementActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setActionForHealthIdScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 438
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-nez p3, :cond_0

    .line 442
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    const-string p2, "createAbhaNumber"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    const-string p2, "seedAbhaNumber"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->access$302(Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 446
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;

    invoke-virtual {p1, p3}, Lcom/argusoft/sewa/android/app/activity/NDHMHealthIdManagementActivity;->setConsentMessageScreen(I)V

    return-void
.end method

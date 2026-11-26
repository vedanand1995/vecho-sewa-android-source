.class Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;
.super Ljava/lang/Object;
.source "FHSAshaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addFamilyOptionSelectionScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 511
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

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

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    const-string p2, "reportFamilySplitScreen"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    const-string p2, "reportFamilyMigrationScreen"

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->access$400(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_2
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    const-string p2, "Family details"

    invoke-virtual {p1, p2}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->setSubTitle(Ljava/lang/String;)V

    .line 517
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->addSelectedFamilyDetails()V

    .line 527
    :goto_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/FHSAshaActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

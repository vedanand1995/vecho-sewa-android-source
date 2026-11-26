.class Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;
.super Ljava/lang/Object;
.source "LmsSimulationActivity.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->setCaseStudyScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 235
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    .line 238
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 239
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 243
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 244
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 245
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 247
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/LmsSimulationActivity;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

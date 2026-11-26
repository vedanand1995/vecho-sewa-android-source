.class Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;
.super Ljava/lang/Object;
.source "MigrateInActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->setMemberQuestionsScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 548
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 551
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$800()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p2, p1, :cond_0

    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$900()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_1

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 553
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/RadioGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 554
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 555
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 557
    :cond_1
    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1500()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_2

    .line 558
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 559
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/RadioGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 560
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1000(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 561
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/RadioGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 562
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1200(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/RadioGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    invoke-static {}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$800()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 563
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 564
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 565
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1300(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 566
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1100(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;->access$1400(Lcom/argusoft/sewa/android/app/activity/MigrateInActivity;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

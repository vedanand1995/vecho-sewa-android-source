.class Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;
.super Ljava/lang/Object;
.source "FamilyMigrationOutActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->setSearchOptionScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 394
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 395
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/RadioGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 397
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;

    invoke-static {p2}, Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/FamilyMigrationOutActivity;)Landroid/widget/RadioGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

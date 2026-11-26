.class Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;
.super Ljava/lang/Object;
.source "DailyNutritionActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->setBodyDetail()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->context:Landroid/content/Context;

    const-string v2, "Data not synced properly. Please refresh."

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/argusoft/sewa/android/app/component/MyStaticComponents;->generateInstructionView(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/material/textview/MaterialTextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "Okay"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2$1;

    invoke-direct {v1, p0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->hideProcessDialog()V

    return-void
.end method

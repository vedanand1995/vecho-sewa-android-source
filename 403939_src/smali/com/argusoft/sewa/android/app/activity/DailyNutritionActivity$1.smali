.class Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;
.super Ljava/lang/Object;
.source "DailyNutritionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->checkIfAlreadyFilled()V
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

    .line 107
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 111
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 112
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->navigateToHomeScreen(Z)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DailyNutritionActivity;->addAshaAreaSelectionSpinner()V

    :goto_0
    return-void
.end method

.class Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;
.super Ljava/lang/Object;
.source "HomeScreenMenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;->showYearEndSummaryAlert(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Ljava/lang/String;Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 1

    .line 326
    :try_start_0
    new-instance p3, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-direct {p3, v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 327
    invoke-virtual {p1, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    const-string p0, "No browser found to open the summary."

    const/4 p3, 0x0

    invoke-static {p1, p0, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 331
    :goto_0
    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method static synthetic lambda$run$1(Landroidx/appcompat/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    .line 336
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 295
    const-string v0, "#userId#"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->val$userId:Ljava/lang/String;

    const-string v2, "https://techo.gujarat.gov.in/ui/recap/#userId#"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 298
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->val$context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 300
    sget v2, Lcom/argusoft/sewa/android/app/R$layout;->dialog_year_end_summary:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 303
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->val$context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v3, 0x1

    .line 305
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 307
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 311
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_0
    sget v3, Lcom/argusoft/sewa/android/app/R$id;->btnViewSummary:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 316
    sget v4, Lcom/argusoft/sewa/android/app/R$id;->btnNotNow:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 317
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->tvSummaryHeadline:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 318
    const-string v6, "Your Year-End Summary is Here!"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    sget v5, Lcom/argusoft/sewa/android/app/R$id;->tvSummaryBody:I

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 320
    const-string v5, "Thank you for your incredible dedication this year. We\u2019ve prepared a special summary highlighting your impact. Tap below to view it in your browser."

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    const-string v1, "VIEW MY SUMMARY"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->val$context:Landroid/content/Context;

    new-instance v5, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v1, v2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Landroid/content/Context;Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    const-string v0, "Not Now"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 335
    new-instance v0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6$$ExternalSyntheticLambda1;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/HomeScreenMenuActivity$6;->val$context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    :cond_1
    return-void
.end method

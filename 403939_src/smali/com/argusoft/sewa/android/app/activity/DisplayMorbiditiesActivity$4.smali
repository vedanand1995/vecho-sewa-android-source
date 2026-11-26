.class Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;
.super Ljava/lang/Object;
.source "DisplayMorbiditiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->buildDiseasesExplanationScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 371
    sget v0, Lcom/argusoft/sewa/android/app/util/DynamicUtils;->ID_NEXT_BUTTON:I

    if-ne p1, v0, :cond_1

    .line 372
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->familyUnderstandInMorbidity:Ljava/lang/String;

    .line 374
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->showProcessDialog()V

    .line 375
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;)V

    .line 381
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4$1;->start()V

    goto :goto_0

    .line 383
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Does the mother/family understand?"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

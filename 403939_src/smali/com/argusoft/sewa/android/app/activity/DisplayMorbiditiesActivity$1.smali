.class Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;
.super Ljava/lang/Object;
.source "DisplayMorbiditiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->buildMorbidityScreen()V
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

    .line 267
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 270
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 271
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->finish()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$100(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 273
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$200(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->access$300(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/argusoft/sewa/android/app/util/SewaUtil;->familyUnderstandInMorbidity:Ljava/lang/String;

    .line 276
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity;->showProcessDialog()V

    .line 277
    new-instance p1, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1$1;-><init>(Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1;)V

    .line 283
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/DisplayMorbiditiesActivity$1$1;->start()V

    :goto_0
    return-void
.end method

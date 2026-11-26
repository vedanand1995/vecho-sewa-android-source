.class Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$2;
.super Ljava/lang/Object;
.source "DynamicFormActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->storeOpdLabTestForm(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 647
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 650
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 651
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$000(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->storeOpdLabTestForm(Ljava/lang/String;)V

    goto :goto_0

    .line 653
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/DynamicFormActivity;Z)V

    :goto_0
    return-void
.end method

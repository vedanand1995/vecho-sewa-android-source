.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;
.super Ljava/lang/Object;
.source "MyPeopleAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->onBackPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 205
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 206
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    .line 207
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->finish()V

    goto :goto_0

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :goto_0
    return-void
.end method

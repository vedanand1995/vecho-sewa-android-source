.class Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$6;
.super Ljava/lang/Object;
.source "MyPeopleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->startDynamicFormActivityForLCDC()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2758
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 2761
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 2762
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity$6;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

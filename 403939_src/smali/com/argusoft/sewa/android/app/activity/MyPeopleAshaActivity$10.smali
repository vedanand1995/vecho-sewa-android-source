.class Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$10;
.super Ljava/lang/Object;
.source "MyPeopleAshaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->startDynamicFormActivityForLCDC(Ljava/lang/String;)V
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

    .line 967
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 970
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    .line 971
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity$10;->this$0:Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/activity/MyPeopleAshaActivity;->navigateToHomeScreen(Z)V

    return-void
.end method

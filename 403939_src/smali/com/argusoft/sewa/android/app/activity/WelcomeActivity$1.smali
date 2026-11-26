.class Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 129
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity$1;->this$0:Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/WelcomeActivity;->alertDialog:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    const/4 p1, 0x0

    .line 130
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method

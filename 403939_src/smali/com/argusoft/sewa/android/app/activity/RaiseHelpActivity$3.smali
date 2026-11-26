.class Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$3;
.super Ljava/lang/Object;
.source "RaiseHelpActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 177
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity$3;->this$0:Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;->access$500(Lcom/argusoft/sewa/android/app/activity/RaiseHelpActivity;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

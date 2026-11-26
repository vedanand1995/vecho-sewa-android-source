.class Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$2;
.super Ljava/lang/Object;
.source "CustomPhotoCaptureActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 94
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 96
    const-string v0, "image/*"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity$2;->this$0:Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;

    const/16 v1, 0x65

    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/activity/CustomPhotoCaptureActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.class Lcom/argusoft/sewa/android/app/component/MyAlertDialog$2;
.super Ljava/lang/Object;
.source "MyAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 238
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 241
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/MyAlertDialog$2;->this$0:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->access$000(Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)V

    return-void
.end method

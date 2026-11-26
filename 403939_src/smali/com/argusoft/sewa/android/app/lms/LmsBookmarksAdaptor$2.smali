.class Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;
.super Ljava/lang/Object;
.source "LmsBookmarksAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->getDeleteListener(ILcom/argusoft/sewa/android/app/model/LmsBookMarkBean;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

.field final synthetic val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 139
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->val$bookMarkBean:Lcom/argusoft/sewa/android/app/model/LmsBookMarkBean;

    iput p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 142
    new-instance p1, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;

    invoke-direct {p1, p0}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2$1;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;)V

    .line 153
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    new-instance v1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Are you sure you want to delete this bookmark?"

    const/16 v4, -0x97

    invoke-direct {v1, v2, v3, p1, v4}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-static {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$302(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;Lcom/argusoft/sewa/android/app/component/MyAlertDialog;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 156
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsBookmarksAdaptor;)Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

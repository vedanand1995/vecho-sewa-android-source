.class Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$1;
.super Ljava/lang/Object;
.source "LmsCourseListAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;-><init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

.field final synthetic val$this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 258
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$1;->val$this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    iget-object v0, v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$1;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->onMenuClick(ILandroid/view/View;)V

    return-void
.end method

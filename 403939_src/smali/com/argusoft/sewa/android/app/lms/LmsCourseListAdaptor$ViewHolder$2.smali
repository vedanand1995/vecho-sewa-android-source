.class Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$2;
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

    .line 264
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$2;->val$this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 267
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    iget-object p1, p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder$2;->this$1:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->onAdapterItemClick(I)V

    return-void
.end method

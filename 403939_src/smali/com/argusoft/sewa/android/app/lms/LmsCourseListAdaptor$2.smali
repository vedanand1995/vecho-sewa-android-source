.class Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;
.super Ljava/lang/Object;
.source "LmsCourseListAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->onBindViewHolder(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

.field final synthetic val$course:Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;Landroid/view/View$OnClickListener;)V
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

    .line 115
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;->val$course:Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 118
    new-instance p1, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to download media files  for this course due to insufficient space. Required space is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;->val$course:Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;

    .line 120
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseScreenDataBean;->getCourseSize()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB & available free storage is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    .line 121
    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;->getAvailableInternalMemorySize()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " MB."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$2;->val$listener:Landroid/view/View$OnClickListener;

    const/16 v3, -0x69

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    sput-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    .line 123
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->show()V

    return-void
.end method

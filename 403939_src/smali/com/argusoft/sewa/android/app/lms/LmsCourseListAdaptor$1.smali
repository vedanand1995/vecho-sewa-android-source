.class Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$1;
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


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsCourseListAdaptor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 109
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    if-eqz p1, :cond_0

    .line 110
    sget-object p1, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->workLogAlert:Lcom/argusoft/sewa/android/app/component/MyAlertDialog;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/component/MyAlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

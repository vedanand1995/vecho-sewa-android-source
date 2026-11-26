.class Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$4;
.super Lcom/google/gson/reflect/TypeToken;
.source "LmsProgressReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;->getTotalMarksInAQuiz(Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/List<",
        "Lcom/argusoft/sewa/android/app/databean/LmsSectionConfigDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 405
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity$4;->this$0:Lcom/argusoft/sewa/android/app/activity/LmsProgressReportActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method

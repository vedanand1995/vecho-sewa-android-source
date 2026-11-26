.class Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;
.super Ljava/lang/Object;
.source "LmsExpandableListAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

.field final synthetic val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/lang/String;)V
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

    .line 148
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 151
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getSelectedLesson()Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object p1

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getActualId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/argusoft/sewa/android/app/activity/CustomPDFViewerActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 154
    const-string v0, "path"

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->val$path:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fileName"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v0, "fromLms"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$100(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCourseId()Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "courseId"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 158
    const-string v0, "transcript"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 159
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "lesson"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;

    .line 161
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->getVideoView()Lcom/argusoft/sewa/android/app/lms/MyVideoView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->pause()V

    .line 164
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/lms/MyVideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->setPositionForTranscript(I)V

    :cond_0
    const/16 v1, 0x3fa

    .line 166
    invoke-virtual {v0, p1, v1}, Lcom/argusoft/sewa/android/app/lms/LmsCourseDetailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$1;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$000(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Please select the lesson first"

    invoke-static {p1, v0}, Lcom/argusoft/sewa/android/app/util/SewaUtil;->generateToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

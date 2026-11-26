.class Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;
.super Ljava/lang/Object;
.source "LmsExpandableListAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->openLmsTestModulePopup(Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

.field final synthetic val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

.field final synthetic val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

.field final synthetic val$testFor:Ljava/lang/String;

.field final synthetic val$topic:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
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

    .line 387
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$topic:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    iput-object p4, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    iput-object p5, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$testFor:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 390
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$topic:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$media:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$questionSet:Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->val$testFor:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$300(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Lcom/argusoft/sewa/android/app/databean/LmsQuestionSetDataBean;Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/widget/PopupWindow;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$4;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    invoke-static {p1}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$400(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

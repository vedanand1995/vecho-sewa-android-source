.class Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;
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

.field final synthetic val$finalConvertView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;)V
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

    .line 186
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;->val$finalConvertView:Landroid/view/View;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;->val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 189
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;->val$finalConvertView:Landroid/view/View;

    iget-object v3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;->val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {v3}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v4

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$2;->val$child:Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

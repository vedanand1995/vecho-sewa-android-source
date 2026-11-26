.class Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;
.super Ljava/lang/Object;
.source "LmsExpandableListAdaptor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->getGroupViewOfTopic(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;IZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

.field final synthetic val$finalConvertView:Landroid/view/View;

.field final synthetic val$group:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)V
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

    .line 505
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    iput-object p2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;->val$finalConvertView:Landroid/view/View;

    iput-object p3, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;->val$group:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 508
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;->this$0:Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;->val$finalConvertView:Landroid/view/View;

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;->val$group:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {v2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getQuestionSet()Ljava/util/List;

    move-result-object v4

    iget-object p1, p0, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor$5;->val$group:Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicName()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;->access$200(Lcom/argusoft/sewa/android/app/lms/LmsExpandableListAdaptor;Landroid/view/View;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

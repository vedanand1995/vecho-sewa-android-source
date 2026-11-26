.class public Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;
.super Ljava/lang/Object;
.source "MyComparatorUtil.java"


# static fields
.field public static final CHILD_DUE_VACCINES_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/argusoft/sewa/android/app/databean/MemberDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LMS_COURSE_COMPLETION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LMS_FIB_BLANKS_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/argusoft/sewa/android/app/databean/LmsFIBQuestionAnswersDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LMS_TOPIC_MEDIA_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/argusoft/sewa/android/app/databean/LmsLessonDataBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final LMS_TOPIC_ORDER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$1;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$1;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_MEDIA_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 19
    new-instance v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$2;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$2;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_TOPIC_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 25
    new-instance v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$3;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$3;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_FIB_BLANKS_ORDER_COMPARATOR:Ljava/util/Comparator;

    .line 31
    new-instance v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$4;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$4;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->LMS_COURSE_COMPLETION_COMPARATOR:Ljava/util/Comparator;

    .line 45
    new-instance v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->CHILD_DUE_VACCINES_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)I
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 49
    :cond_2
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getDueVaccinesCount()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.class Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$4;
.super Ljava/lang/Object;
.source "MyComparatorUtil.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)I
    .locals 2

    .line 33
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 35
    :cond_0
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 37
    :cond_1
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    const/4 p1, -0x1

    return p1

    .line 40
    :cond_2
    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;->getCompletionStatus()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$4;->compare(Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;Lcom/argusoft/sewa/android/app/databean/LmsCourseDataBean;)I

    move-result p1

    return p1
.end method

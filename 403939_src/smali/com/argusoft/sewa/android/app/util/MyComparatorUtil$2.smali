.class Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$2;
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
        "Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)I
    .locals 0

    .line 21
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicOrder()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;->getTopicOrder()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
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

    .line 19
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$2;->compare(Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;Lcom/argusoft/sewa/android/app/databean/LmsTopicDataBean;)I

    move-result p1

    return p1
.end method

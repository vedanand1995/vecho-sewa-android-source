.class public Lcom/argusoft/sewa/android/app/comparator/MenuConstantComparator;
.super Ljava/lang/Object;
.source "MenuConstantComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/argusoft/sewa/android/app/model/MenuBean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/argusoft/sewa/android/app/model/MenuBean;Lcom/argusoft/sewa/android/app/model/MenuBean;)I
    .locals 0

    .line 10
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getOrder()I

    move-result p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/model/MenuBean;->getOrder()I

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

    .line 7
    check-cast p1, Lcom/argusoft/sewa/android/app/model/MenuBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/model/MenuBean;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/comparator/MenuConstantComparator;->compare(Lcom/argusoft/sewa/android/app/model/MenuBean;Lcom/argusoft/sewa/android/app/model/MenuBean;)I

    move-result p1

    return p1
.end method

.class Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl$1;
.super Ljava/lang/Object;
.source "SewaServiceImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;->loadQuestionsBySheet(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;


# direct methods
.method constructor <init>(Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 830
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl$1;->this$0:Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;)I
    .locals 0

    .line 833
    invoke-virtual {p1}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

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

    .line 830
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;

    invoke-virtual {p0, p1, p2}, Lcom/argusoft/sewa/android/app/core/impl/SewaServiceImpl$1;->compare(Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;Lcom/argusoft/sewa/android/app/databean/FieldValueMobDataBean;)I

    move-result p1

    return p1
.end method

.class public final synthetic Lcom/argusoft/sewa/android/app/util/MyComparatorUtil$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 0
    check-cast p1, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/util/MyComparatorUtil;->lambda$static$0(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/argusoft/sewa/android/app/databean/MemberDataBean;)I

    move-result p1

    return p1
.end method

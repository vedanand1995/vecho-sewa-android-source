.class public final synthetic Lcom/argusoft/sewa/android/app/support/SupportStore$$ExternalSyntheticLambda11;
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
    check-cast p1, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    check-cast p2, Lcom/argusoft/sewa/android/app/model/SupportTicketBean;

    invoke-static {p1, p2}, Lcom/argusoft/sewa/android/app/support/SupportStore;->lambda$tickets$0(Lcom/argusoft/sewa/android/app/model/SupportTicketBean;Lcom/argusoft/sewa/android/app/model/SupportTicketBean;)I

    move-result p1

    return p1
.end method

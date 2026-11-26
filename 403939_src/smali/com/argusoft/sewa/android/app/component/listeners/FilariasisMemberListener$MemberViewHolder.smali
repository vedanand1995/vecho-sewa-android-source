.class public Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;
.super Ljava/lang/Object;
.source "FilariasisMemberListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberViewHolder"
.end annotation


# instance fields
.field public etReason:Lcom/google/android/material/textfield/TextInputEditText;

.field public member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

.field public tilReason:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method public constructor <init>(Lcom/argusoft/sewa/android/app/databean/MemberDataBean;Lcom/google/android/material/textfield/TextInputLayout;Lcom/google/android/material/textfield/TextInputEditText;)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;->member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 142
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;->tilReason:Lcom/google/android/material/textfield/TextInputLayout;

    .line 143
    iput-object p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;->etReason:Lcom/google/android/material/textfield/TextInputEditText;

    return-void
.end method

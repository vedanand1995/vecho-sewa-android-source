.class public Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;
.super Ljava/lang/Object;
.source "FilariasisMemberListener.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;,
        Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;
    }
.end annotation


# instance fields
.field private final answerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

.field private final totalMembers:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;I)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 37
    iput p3, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->totalMembers:I

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    return-void
.end method

.method private updateQueFormAnswer()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    .line 107
    invoke-virtual {v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->getIsmandatory()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->totalMembers:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;

    .line 117
    iget v3, v1, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->answer:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->reason:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v0, v2}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    const-string v1, "Please enter the reason"

    invoke-static {v1}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setMandatorymessage(Ljava/lang/String;)V

    return-void

    .line 126
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 128
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->queFormBean:Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;

    invoke-virtual {v1, v0}, Lcom/argusoft/sewa/android/app/datastructure/QueFormBean;->setAnswer(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Answer JSON: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 7

    .line 45
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v1, v0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;->member:Lcom/argusoft/sewa/android/app/databean/MemberDataBean;

    .line 49
    iget-object v2, v0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;->tilReason:Lcom/google/android/material/textfield/TextInputLayout;

    .line 50
    iget-object v0, v0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberViewHolder;->etReason:Lcom/google/android/material/textfield/TextInputEditText;

    if-nez v1, :cond_1

    return-void

    .line 54
    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RadioButton;

    if-nez p1, :cond_2

    return-void

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 58
    invoke-virtual {v1}, Lcom/argusoft/sewa/android/app/databean/MemberDataBean;->getUniqueHealthId()Ljava/lang/String;

    move-result-object v3

    .line 60
    iget-object v4, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;

    const/4 v5, 0x0

    if-nez v4, :cond_3

    .line 62
    new-instance v4, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;

    invoke-direct {v4, v3, p2, v5}, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    :cond_3
    iput p2, v4, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->answer:I

    const/4 v6, 0x2

    if-ne p2, v6, :cond_5

    const/4 p2, 0x0

    .line 69
    invoke-virtual {v2, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 72
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 73
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 75
    :cond_4
    iput-object v5, v4, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->reason:Ljava/lang/String;

    goto :goto_0

    :cond_5
    const/16 p2, 0x8

    .line 79
    invoke-virtual {v2, p2}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 80
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 81
    const-string p2, ""

    invoke-virtual {v0, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_6
    iput-object v5, v4, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->reason:Ljava/lang/String;

    .line 85
    :goto_0
    sget-object p2, Lcom/argusoft/sewa/android/app/datastructure/SharedStructureData;->filariaAnswerMapWithMemberAsKey:Ljava/util/Map;

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->updateQueFormAnswer()V

    return-void
.end method

.method public onReasonChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;

    if-nez v0, :cond_0

    return-void

    .line 96
    :cond_0
    iget v1, v0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->answer:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    if-eqz p2, :cond_1

    .line 97
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, v0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener$MemberAnswer;->reason:Ljava/lang/String;

    .line 98
    iget-object p2, p0, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->answerMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-direct {p0}, Lcom/argusoft/sewa/android/app/component/listeners/FilariasisMemberListener;->updateQueFormAnswer()V

    :cond_2
    return-void
.end method

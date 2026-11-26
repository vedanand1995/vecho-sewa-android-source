.class public Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DueListANCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$LoadingViewHolder;,
        Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final VIEW_TYPE_ITEM:I = 0x0

.field private static final VIEW_TYPE_LOADING:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field public hasMoreData:Z

.field public isLoading:Z

.field private members:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->isLoading:Z

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->hasMoreData:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->members:Ljava/util/List;

    .line 42
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->context:Landroid/content/Context;

    return-void
.end method

.method private getDateFromObject(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 147
    :cond_0
    :try_start_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 149
    new-instance v1, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 150
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 152
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->members:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->isLoading:Z

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->isLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 11

    .line 80
    instance-of v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;

    if-eqz v0, :cond_7

    .line 81
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->members:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 82
    const-string v0, "fullName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    const-string v1, "uniqueHealthId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 85
    const-string v2, "dueDate"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->getDateFromObject(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    .line 86
    const-string v3, "lmp"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->getDateFromObject(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    .line 87
    const-string v4, "edd"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->getDateFromObject(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v4

    .line 89
    check-cast p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;

    .line 90
    iget-object v5, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->nameText:Landroid/widget/TextView;

    const-string v6, "Not available"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->idText:Landroid/widget/TextView;

    const-string v5, "ID"

    invoke-static {v5}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v5, 0x1

    aput-object v1, v8, v5

    const-string v1, "%s: %s"

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->dueDateText:Landroid/widget/TextView;

    const-string v8, "Due"

    invoke-static {v8}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v2, :cond_2

    iget-object v10, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v10, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-array v10, v7, [Ljava/lang/Object;

    aput-object v8, v10, v9

    aput-object v2, v10, v5

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->eddText:Landroid/widget/TextView;

    const-string v2, "EDD"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3
    new-array v8, v7, [Ljava/lang/Object;

    aput-object v2, v8, v9

    aput-object v4, v8, v5

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->lmpText:Landroid/widget/TextView;

    const-string v2, "LMP"

    invoke-static {v2}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v9

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    const-string v0, "isHighRisk"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 98
    const-string v1, "isVeryHighRisk"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    .line 100
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, p2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const v1, 0x1060017

    if-eqz p2, :cond_5

    .line 101
    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->highRisk:Landroid/widget/TextView;

    const-string v0, "Very High Risk"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->highRisk:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->context:Landroid/content/Context;

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 103
    :cond_5
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 104
    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->highRisk:Landroid/widget/TextView;

    const-string v0, "High Risk"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->highRisk:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->context:Landroid/content/Context;

    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 107
    :cond_6
    iget-object p2, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->highRisk:Landroid/widget/TextView;

    const-string v0, "No Risk"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;->highRisk:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->context:Landroid/content/Context;

    const v0, 0x1060013

    invoke-static {p2, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->item_loading_footer:I

    .line 69
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$LoadingViewHolder;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$LoadingViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 72
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->item_member_data_dl_anc:I

    .line 73
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 74
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter$MemberViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setHasMoreData(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->hasMoreData:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->isLoading:Z

    .line 52
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->members:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/ANC/DueListANCAdapter;->notifyDataSetChanged()V

    return-void
.end method

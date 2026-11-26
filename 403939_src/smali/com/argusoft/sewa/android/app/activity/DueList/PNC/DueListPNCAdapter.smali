.class public Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DueListPNCAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$LoadingViewHolder;,
        Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;
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
.method public constructor <init>(Ljava/util/List;)V
    .locals 3
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

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->isLoading:Z

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->hasMoreData:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->members:Ljava/util/List;

    return-void
.end method

.method private getDateFromObject(Ljava/lang/Object;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    :try_start_0
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 124
    new-instance v1, Ljava/util/Date;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v1

    .line 125
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 127
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

    .line 130
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->members:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->isLoading:Z

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 55
    iget-boolean v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->isLoading:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->members:Ljava/util/List;

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
    .locals 9

    .line 74
    instance-of v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->members:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 76
    const-string v0, "fullName"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    const-string v1, "uniqueHealthId"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    const-string v2, "dueDate"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->getDateFromObject(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v2

    .line 80
    const-string v3, "lastDeliveryDate"

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->getDateFromObject(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p2

    .line 82
    check-cast p1, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;

    .line 83
    iget-object v3, p1, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->nameText:Landroid/widget/TextView;

    const-string v4, "Not available"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->idText:Landroid/widget/TextView;

    const-string v3, "ID"

    invoke-static {v3}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v1, v6, v3

    const-string v1, "%s: %s"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p1, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->dueDateText:Landroid/widget/TextView;

    const-string v6, "Due"

    invoke-static {v6}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    new-array v8, v5, [Ljava/lang/Object;

    aput-object v6, v8, v7

    aput-object v2, v8, v3

    invoke-static {v1, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p1, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;->deliveryDateText:Landroid/widget/TextView;

    const-string v0, "Last Delivery"

    invoke-static {v0}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    invoke-static {v4}, Lcom/argusoft/sewa/android/app/util/UtilBean;->getMyLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_3
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v7

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->item_loading_footer:I

    .line 63
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$LoadingViewHolder;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$LoadingViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    .line 66
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/argusoft/sewa/android/app/R$layout;->item_member_data_dl_pnc:I

    .line 67
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;

    invoke-direct {p2, p1}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter$MemberViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public setHasMoreData(Z)V
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->hasMoreData:Z

    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->isLoading:Z

    .line 46
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->notifyDataSetChanged()V

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

    .line 40
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object p1, p0, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->members:Ljava/util/List;

    .line 41
    invoke-virtual {p0}, Lcom/argusoft/sewa/android/app/activity/DueList/PNC/DueListPNCAdapter;->notifyDataSetChanged()V

    return-void
.end method

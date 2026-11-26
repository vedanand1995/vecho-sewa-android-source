.class public Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;
.super Ljava/lang/Object;
.source "TreeHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconTreeItem"
.end annotation


# instance fields
.field public icon:I

.field public isCompleted:Z

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;->icon:I

    .line 72
    iput-object p2, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;->text:Ljava/lang/String;

    .line 73
    iput-boolean p3, p0, Lcom/argusoft/sewa/android/app/treeview/holder/TreeHolder$IconTreeItem;->isCompleted:Z

    return-void
.end method

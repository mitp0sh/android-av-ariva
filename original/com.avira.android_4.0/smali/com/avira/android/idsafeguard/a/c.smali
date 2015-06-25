.class public final Lcom/avira/android/idsafeguard/a/c;
.super Landroid/support/v4/widget/a;
.source "SourceFile"


# instance fields
.field private final j:Lcom/avira/android/idsafeguard/d/b;

.field private final k:Landroid/view/LayoutInflater;

.field private final l:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;B)V

    .line 30
    iput-object p1, p0, Lcom/avira/android/idsafeguard/a/c;->l:Landroid/content/Context;

    .line 31
    new-instance v0, Lcom/avira/android/idsafeguard/d/b;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/a/c;->l:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/avira/android/idsafeguard/d/b;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/a/c;->j:Lcom/avira/android/idsafeguard/d/b;

    .line 32
    iget-object v0, p0, Lcom/avira/android/idsafeguard/a/c;->j:Lcom/avira/android/idsafeguard/d/b;

    check-cast p1, Lcom/avira/android/idsafeguard/b/e;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/b/e;)V

    .line 33
    iget-object v0, p0, Lcom/avira/android/idsafeguard/a/c;->l:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/a/c;->k:Landroid/view/LayoutInflater;

    .line 34
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/avira/android/idsafeguard/a/c;->k:Landroid/view/LayoutInflater;

    const v1, 0x7f030066

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 61
    const v0, 0x7f0e0153

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    const v1, 0x7f0e014f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 63
    const v2, 0x7f0e0151

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 66
    const v3, 0x7f0e0154

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    const v4, 0x7f0e0155

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 71
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v3, ""

    if-ne v5, v7, :cond_1

    iget-object v3, p0, Lcom/avira/android/idsafeguard/a/c;->l:Landroid/content/Context;

    const v5, 0x7f0802f1

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v3, p0, Lcom/avira/android/idsafeguard/a/c;->j:Lcom/avira/android/idsafeguard/d/b;

    invoke-virtual {v3, v0, v2, v1}, Lcom/avira/android/idsafeguard/d/b;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 77
    return-void

    .line 72
    :cond_1
    if-le v5, v7, :cond_0

    iget-object v3, p0, Lcom/avira/android/idsafeguard/a/c;->l:Landroid/content/Context;

    const v6, 0x7f0802f2

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.class public Lcom/avira/android/idsafeguard/a/d;
.super Landroid/support/v4/widget/a;
.source "SourceFile"


# instance fields
.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/avira/android/idsafeguard/d/b;

.field private final m:Landroid/view/LayoutInflater;

.field private final n:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/a;-><init>(Landroid/content/Context;B)V

    .line 28
    const-class v0, Lcom/avira/android/idsafeguard/a/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/idsafeguard/a/d;->j:Ljava/lang/String;

    .line 29
    const-string v0, "yyyy-MM-dd"

    iput-object v0, p0, Lcom/avira/android/idsafeguard/a/d;->k:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/avira/android/idsafeguard/a/d;->n:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/avira/android/idsafeguard/d/b;

    iget-object v1, p0, Lcom/avira/android/idsafeguard/a/d;->n:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v2}, Lcom/avira/android/idsafeguard/d/b;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/avira/android/idsafeguard/a/d;->l:Lcom/avira/android/idsafeguard/d/b;

    .line 39
    iget-object v0, p0, Lcom/avira/android/idsafeguard/a/d;->l:Lcom/avira/android/idsafeguard/d/b;

    check-cast p1, Lcom/avira/android/idsafeguard/b/e;

    invoke-virtual {v0, p1}, Lcom/avira/android/idsafeguard/d/b;->a(Lcom/avira/android/idsafeguard/b/e;)V

    .line 40
    iget-object v0, p0, Lcom/avira/android/idsafeguard/a/d;->n:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/avira/android/idsafeguard/a/d;->m:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 95
    iget-object v0, p0, Lcom/avira/android/idsafeguard/a/d;->m:Landroid/view/LayoutInflater;

    const v1, 0x7f03006c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/database/Cursor;)V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 48
    const v0, 0x7f0e014c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 50
    new-instance v6, Lcom/avira/android/idsafeguard/a/e;

    invoke-direct {v6, p0}, Lcom/avira/android/idsafeguard/a/e;-><init>(Lcom/avira/android/idsafeguard/a/d;)V

    .line 51
    const v1, 0x7f0e014d

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v6, v1}, Lcom/avira/android/idsafeguard/a/e;->a(Lcom/avira/android/idsafeguard/a/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 52
    const v1, 0x7f0e014e

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v6, v1}, Lcom/avira/android/idsafeguard/a/e;->b(Lcom/avira/android/idsafeguard/a/e;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 55
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 56
    invoke-static {v6}, Lcom/avira/android/idsafeguard/a/e;->a(Lcom/avira/android/idsafeguard/a/e;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 60
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    iget-object v4, p0, Lcom/avira/android/idsafeguard/a/d;->n:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 63
    const-wide/16 v4, 0x0

    .line 67
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 68
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 69
    :try_start_1
    iget-object v4, p0, Lcom/avira/android/idsafeguard/a/d;->n:Landroid/content/Context;

    const/16 v5, 0x10

    invoke-static {v4, v2, v3, v5}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 78
    :goto_0
    invoke-static {v6}, Lcom/avira/android/idsafeguard/a/e;->b(Lcom/avira/android/idsafeguard/a/e;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    iput-object v7, v6, Lcom/avira/android/idsafeguard/a/e;->a:Ljava/lang/String;

    .line 82
    iput-wide v2, v6, Lcom/avira/android/idsafeguard/a/e;->b:J

    .line 83
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v6, Lcom/avira/android/idsafeguard/a/e;->c:I

    .line 84
    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/avira/android/idsafeguard/a/e;->d:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/avira/android/idsafeguard/a/d;->l:Lcom/avira/android/idsafeguard/d/b;

    invoke-virtual {v1, v0, v9, v9}, Lcom/avira/android/idsafeguard/d/b;->a(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 90
    return-void

    .line 73
    :catch_0
    move-exception v2

    move-object v10, v2

    move-wide v2, v4

    move-object v4, v10

    .line 75
    :goto_1
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v5

    iget-object v8, p0, Lcom/avira/android/idsafeguard/a/d;->j:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v8, v4}, Lcom/avira/android/utilities/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :catch_1
    move-exception v4

    goto :goto_1
.end method

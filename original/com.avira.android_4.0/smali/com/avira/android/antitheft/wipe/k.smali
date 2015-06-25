.class final Lcom/avira/android/antitheft/wipe/k;
.super Landroid/content/AsyncQueryHandler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/antitheft/wipe/j;


# direct methods
.method public constructor <init>(Lcom/avira/android/antitheft/wipe/j;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/avira/android/antitheft/wipe/k;->a:Lcom/avira/android/antitheft/wipe/j;

    .line 96
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 97
    return-void
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    if-eqz p3, :cond_0

    .line 104
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :try_start_0
    const-string v0, "index_on_icc"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 115
    :goto_1
    invoke-static {}, Lcom/avira/android/antitheft/wipe/j;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/avira/android/antitheft/wipe/k;->a:Lcom/avira/android/antitheft/wipe/j;

    invoke-static {v1}, Lcom/avira/android/antitheft/wipe/j;->a(Lcom/avira/android/antitheft/wipe/j;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    const-string v0, "index_on_sim"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/k;->a:Lcom/avira/android/antitheft/wipe/j;

    iget-boolean v0, v0, Lcom/avira/android/antitheft/wipe/j;->a:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/avira/android/antitheft/wipe/k;->a:Lcom/avira/android/antitheft/wipe/j;

    sget-object v1, Lcom/avira/android/antitheft/wipe/l;->SMS:Lcom/avira/android/antitheft/wipe/l;

    invoke-virtual {v1}, Lcom/avira/android/antitheft/wipe/l;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/avira/android/antitheft/wipe/j;->a(Ljava/lang/String;Z)V

    .line 123
    :cond_1
    return-void
.end method

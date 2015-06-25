.class public final Lcom/avira/android/antitheft/wipe/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;
    .locals 1

    .prologue
    .line 83
    invoke-static {p0}, Lcom/avira/android/antitheft/wipe/i;->b(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)V
    .locals 1

    .prologue
    .line 71
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avira/android/database/h;->c()V

    .line 72
    invoke-static {p0, p1}, Lcom/avira/android/database/j;->a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)Z

    .line 73
    return-void
.end method

.method public static a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 32
    :try_start_0
    invoke-static {}, Lcom/avira/android/database/m;->values()[Lcom/avira/android/database/m;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    invoke-static {v4}, Lcom/avira/android/antitheft/wipe/i;->b(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;

    move-result-object v4

    sget-object v5, Lcom/avira/android/database/l;->InProgress:Lcom/avira/android/database/l;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 37
    :cond_0
    :goto_1
    return v0

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static b(Lcom/avira/android/database/m;)Lcom/avira/android/database/l;
    .locals 3

    .prologue
    .line 96
    invoke-static {p0}, Lcom/avira/android/database/j;->a(Lcom/avira/android/database/m;)Ljava/lang/String;

    move-result-object v1

    .line 97
    sget-object v0, Lcom/avira/android/database/l;->Idle:Lcom/avira/android/database/l;

    .line 98
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 100
    invoke-static {v1}, Lcom/avira/android/database/l;->valueOf(Ljava/lang/String;)Lcom/avira/android/database/l;

    move-result-object v0

    .line 102
    :cond_0
    return-object v0
.end method

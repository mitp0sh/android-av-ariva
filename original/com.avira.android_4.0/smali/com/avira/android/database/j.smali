.class public final Lcom/avira/android/database/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final WIPE_JOB_STATE:Ljava/lang/String; = "wipeJobState"

.field private static final WIPE_JOB_TYPE:Ljava/lang/String; = "wipeJobType"

.field private static final WIPE_TABLE_NAME:Ljava/lang/String; = "wipeStateTable"

.field private static a:Lcom/avira/android/database/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/avira/android/database/k;

    invoke-direct {v0}, Lcom/avira/android/database/k;-><init>()V

    sput-object v0, Lcom/avira/android/database/j;->a:Lcom/avira/android/database/g;

    return-void
.end method

.method public static a()Lcom/avira/android/database/g;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/avira/android/database/j;->a:Lcom/avira/android/database/g;

    return-object v0
.end method

.method public static a(Lcom/avira/android/database/m;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    sget-object v0, Lcom/avira/android/database/l;->Unknown:Lcom/avira/android/database/l;

    invoke-virtual {v0}, Lcom/avira/android/database/l;->name()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v1

    sget-object v2, Lcom/avira/android/database/j;->a:Lcom/avira/android/database/g;

    invoke-interface {v2}, Lcom/avira/android/database/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avira/android/database/h;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    :try_start_0
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v1

    invoke-virtual {p0}, Lcom/avira/android/database/m;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avira/android/database/j;->a:Lcom/avira/android/database/g;

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Lcom/avira/android/database/g;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 146
    :cond_0
    :goto_0
    return-object v0

    .line 140
    :catch_0
    move-exception v0

    .line 142
    invoke-static {}, Lcom/avira/android/utilities/t;->b()Lcom/avira/android/utilities/t;

    move-result-object v1

    const-string v2, "RemoteWipeStateData.readSetting"

    const-string v3, "Exception"

    invoke-virtual {v1, v2, v3, v0}, Lcom/avira/android/utilities/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 143
    sget-object v0, Lcom/avira/android/database/l;->Unknown:Lcom/avira/android/database/l;

    invoke-virtual {v0}, Lcom/avira/android/database/l;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 92
    sget-object v1, Lcom/avira/android/database/l;->Idle:Lcom/avira/android/database/l;

    invoke-virtual {v1}, Lcom/avira/android/database/l;->name()Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-static {}, Lcom/avira/android/database/m;->values()[Lcom/avira/android/database/m;

    move-result-object v3

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    .line 95
    sget-object v6, Lcom/avira/android/database/j;->a:Lcom/avira/android/database/g;

    invoke-virtual {v5}, Lcom/avira/android/database/m;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v6, v5, v2}, Lcom/avira/android/database/h;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/avira/android/database/g;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lcom/avira/android/database/m;->values()[Lcom/avira/android/database/m;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-object v4, v1, v0

    .line 101
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v5

    invoke-virtual {v4}, Lcom/avira/android/database/m;->name()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/avira/android/database/j;->a:Lcom/avira/android/database/g;

    invoke-virtual {v5, v4, v2, v6}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/database/g;)I

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 103
    :cond_1
    return-void
.end method

.method public static a(Lcom/avira/android/database/m;Lcom/avira/android/database/l;)Z
    .locals 4

    .prologue
    .line 116
    invoke-static {}, Lcom/avira/android/database/h;->e()Lcom/avira/android/database/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/avira/android/database/m;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/avira/android/database/l;->name()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/avira/android/database/j;->a:Lcom/avira/android/database/g;

    invoke-virtual {v0, v1, v2, v3}, Lcom/avira/android/database/h;->a(Ljava/lang/String;Ljava/lang/String;Lcom/avira/android/database/g;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

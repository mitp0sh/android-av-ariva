.class public final Lcom/avira/android/database/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/ContentValues;

.field private b:Lcom/avira/android/database/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/avira/android/database/e;->a:Landroid/content/ContentValues;

    .line 13
    invoke-static {}, Lcom/avira/android/database/f;->a()Lcom/avira/android/database/f;

    move-result-object v0

    iput-object v0, p0, Lcom/avira/android/database/e;->b:Lcom/avira/android/database/f;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/database/e;->a:Landroid/content/ContentValues;

    return-object v0
.end method

.method public final a(Ljava/lang/String;J)Lcom/avira/android/database/e;
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/avira/android/database/e;->a:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/avira/android/database/e;->b:Lcom/avira/android/database/f;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/avira/android/database/e;
    .locals 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/avira/android/database/e;->a:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/avira/android/database/e;->b:Lcom/avira/android/database/f;

    invoke-virtual {v1, p2, p1}, Lcom/avira/android/database/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-object p0
.end method

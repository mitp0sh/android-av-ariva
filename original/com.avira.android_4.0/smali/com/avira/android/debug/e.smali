.class final Lcom/avira/android/debug/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/c/h;


# instance fields
.field final synthetic a:Lcom/avira/android/debug/d;


# direct methods
.method constructor <init>(Lcom/avira/android/debug/d;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/avira/android/debug/e;->a:Lcom/avira/android/debug/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 35
    iget-object v0, p0, Lcom/avira/android/debug/e;->a:Lcom/avira/android/debug/d;

    invoke-static {v0}, Lcom/avira/android/debug/d;->a(Lcom/avira/android/debug/d;)Ljava/util/Date;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 36
    const-string v0, "[%s] location found: (%s, %s) accuracy %sm %s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/avira/android/debug/e;->a:Lcom/avira/android/debug/d;

    invoke-static {v3}, Lcom/avira/android/debug/d;->b(Lcom/avira/android/debug/d;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/avira/android/debug/e;->a:Lcom/avira/android/debug/d;

    invoke-static {v4}, Lcom/avira/android/debug/d;->a(Lcom/avira/android/debug/d;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lcom/avira/android/debug/e;->a:Lcom/avira/android/debug/d;

    invoke-static {v1}, Lcom/avira/android/debug/d;->c(Lcom/avira/android/debug/d;)Landroid/widget/ArrayAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.class public final Lcom/avira/android/securebrowsing/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/avira/android/securebrowsing/c/r;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/avira/android/securebrowsing/c/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    invoke-static {}, Lcom/avira/android/securebrowsing/c/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 580
    invoke-static {v0}, Lcom/avira/android/utilities/al;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 582
    const-string v0, "java.io.tmpdir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 585
    :cond_0
    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/i;->a:Ljava/lang/String;

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avira/android/securebrowsing/c/i;->b:Ljava/util/List;

    .line 587
    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/securebrowsing/c/q;
    .locals 2

    .prologue
    .line 592
    new-instance v0, Lcom/avira/android/securebrowsing/c/h;

    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/i;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/avira/android/securebrowsing/c/h;-><init>(Ljava/lang/String;)V

    .line 593
    iget-object v1, p0, Lcom/avira/android/securebrowsing/c/i;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 594
    return-object v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avira/android/securebrowsing/c/q;

    .line 604
    :try_start_0
    invoke-interface {v0}, Lcom/avira/android/securebrowsing/c/q;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    goto :goto_0

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/avira/android/securebrowsing/c/i;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 611
    return-void
.end method

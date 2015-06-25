.class public final Lcom/avira/android/utilities/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/avira/android/utilities/ag;

.field private b:Ljava/lang/String;

.field private c:Lcom/avira/android/utilities/af;

.field private d:Ljava/lang/Object;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/avira/android/utilities/ag;Ljava/lang/String;ZLcom/avira/android/utilities/af;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/avira/android/utilities/ai;->a:Lcom/avira/android/utilities/ag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    iput-object p2, p0, Lcom/avira/android/utilities/ai;->b:Ljava/lang/String;

    .line 285
    iput-boolean p3, p0, Lcom/avira/android/utilities/ai;->e:Z

    .line 286
    iput-object p4, p0, Lcom/avira/android/utilities/ai;->c:Lcom/avira/android/utilities/af;

    .line 287
    iput-object p5, p0, Lcom/avira/android/utilities/ai;->d:Ljava/lang/Object;

    .line 288
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/avira/android/utilities/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/avira/android/utilities/ai;->e:Z

    return v0
.end method

.method public final c()Lcom/avira/android/utilities/af;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/avira/android/utilities/ai;->c:Lcom/avira/android/utilities/af;

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/avira/android/utilities/ai;->d:Ljava/lang/Object;

    return-object v0
.end method

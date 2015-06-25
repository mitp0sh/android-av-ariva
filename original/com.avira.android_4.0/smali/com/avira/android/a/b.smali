.class public final Lcom/avira/android/a/b;
.super Lcom/avira/android/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p3}, Lcom/avira/android/a/a;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/avira/android/a/b;->a:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/avira/android/a/b;->b:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/avira/android/a/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/avira/android/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

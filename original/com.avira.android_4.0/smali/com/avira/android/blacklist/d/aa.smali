.class public final Lcom/avira/android/blacklist/d/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/avira/android/custom/h;

.field private final b:Lcom/avira/android/custom/h;


# direct methods
.method public constructor <init>(Lcom/avira/android/custom/h;Lcom/avira/android/custom/h;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/avira/android/blacklist/d/aa;->b:Lcom/avira/android/custom/h;

    .line 17
    iput-object p2, p0, Lcom/avira/android/blacklist/d/aa;->a:Lcom/avira/android/custom/h;

    .line 18
    return-void
.end method


# virtual methods
.method public final a()Lcom/avira/android/custom/h;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/avira/android/blacklist/d/aa;->a:Lcom/avira/android/custom/h;

    return-object v0
.end method

.method public final b()Lcom/avira/android/custom/h;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/avira/android/blacklist/d/aa;->b:Lcom/avira/android/custom/h;

    return-object v0
.end method

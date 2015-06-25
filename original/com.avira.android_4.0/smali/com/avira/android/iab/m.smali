.class final Lcom/avira/android/iab/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avira/android/iab/k;


# direct methods
.method constructor <init>(Lcom/avira/android/iab/k;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/avira/android/iab/m;->a:Lcom/avira/android/iab/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/avira/android/iab/m;->a:Lcom/avira/android/iab/k;

    iget-object v0, v0, Lcom/avira/android/iab/k;->a:Lcom/avira/android/iab/IABRequestService;

    invoke-static {v0}, Lcom/avira/android/iab/IABRequestService;->d(Lcom/avira/android/iab/IABRequestService;)V

    .line 396
    return-void
.end method

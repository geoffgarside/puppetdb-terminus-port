# $FreeBSD$

PORTNAME=	puppetdb-terminus
PORTVERSION=	1.6.3
CATEGORIES=	databases ruby
MASTER_SITES=	http://downloads.puppetlabs.com/puppetdb/
DISTNAME=	puppetdb-${PORTVERSION}

MAINTAINER=	freebsd@geoffgarside.co.uk
COMMENT=	PuppetDB storeconfigs backend terminus module

LICENSE=	APACHE20

BUILD_DEPENDS=	puppet>=0:${PORTSDIR}/sysutils/puppet

USE_RUBY=	yes
NO_BUILD=	yes

.include <bsd.port.pre.mk>

do-install:
	${MKDIR} ${STAGEDIR}${RUBY_SITELIBDIR}/puppet
	(cd ${WRKSRC}/ext/master/lib/puppet && ${COPYTREE_SHARE} . ${STAGEDIR}${RUBY_SITELIBDIR}/puppet)

.include <bsd.port.post.mk>

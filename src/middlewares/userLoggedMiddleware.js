// const user = require("../models/user");
const db = require("../database/models");

async function userLoggedMiddleware(req, res, next) {
	res.locals.isLogged = false;

	let emailInCookie = req.cookies.userEmail;
	// let userFromCookie = user.findByField("email", emailInCookie);
	let userFromCookie;


	if(emailInCookie) {
		userFromCookie = await db.User.findOne({
			where: {
				email: emailInCookie,
			}
		})
		.then(user => {
			data = JSON.parse(JSON.stringify(user));
			return data;
		})
	}
	console.log("userFromCookies", userFromCookie);

	if (userFromCookie) {
		req.session.userLogged = userFromCookie;
	}
	if (req.session.userLogged) {
		res.locals.isLogged = true;
		res.locals.userLogged = req.session.userLogged;
	}


	// if (userFromCookie) {
	// 	req.session.userLogged = userFromCookie;
	// }
	// console.log("req.session.usserLogged", req.session.userLogged);

	// if (req.session.userLogged) {
	// 	res.locals.isLogged = true;
	// 	res.locals.userLogged = req.session.userLogged;
	// 	console.log("res.locals.userlogged",res.locals.userLogged);
	// }

	next();
}

module.exports = userLoggedMiddleware;